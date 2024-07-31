module webgpu_test;
import std::io;
import std::os::win32;
import glfw;
import wgpu;

struct Context
{
	wgpu::WGPUInstance instance;
	wgpu::WGPUSurface surface;
	wgpu::WGPUAdapter adapter;
	wgpu::WGPUDevice device;
	wgpu::WGPUSurfaceConfiguration config;
}

char[*] shader_file = $embed("shader.wgsl");
fn wgpu::WGPUShaderModule loadShaderModule(wgpu::WGPUDevice device)
{
	char* buf = &(shader_file[0]);

	wgpu::WGPUShaderModule shader_module = wgpu::wgpuDeviceCreateShaderModule(
		device, 
		&&wgpu::WGPUShaderModuleDescriptor{
			.label = "shader.wgsl",
			.nextInChain = (WGPUChainedStruct*)&&wgpu::WGPUShaderModuleWGSLDescriptor{
				.chain = WGPUChainedStruct{
					.sType = wgpu::WGPUSTYPE_SHADERMODULEWGSLDESCRIPTOR
				},
				.code = buf
			}
		}
	);

	return shader_module;
}

fn int main(String[] args) @wasm
{
	io::printn(io::path::getcwd()!!);

	glfw::WindowRef window = {};
	{
		glfw::init();
		glfw::windowHint(glfw::GLFW_CLIENT_API, glfw::GLFW_NO_API);
		window = glfw::createWindow(800, 600, "GLFW WebGPU", null, null);
		if (window == null)
		{
			io::printn("Failed to init window!");
			glfw::terminate();
			return 1;
		}
		glfw::makeContextCurrent(window);
	}
	defer
	{
		glfw::destroyWindow(window);
		glfw::terminate();
	}

	Context context = {};

	{ // Create Instance
		wgpu::WGPUInstanceDescriptor desc = {};
		desc.nextInChain = null;
		context.instance = wgpu::wgpuCreateInstance(&desc);
		if (context.instance == null)
		{
			io::printn("Failed to create wgpu instance!");
			return 1;
		}
	}
	defer wgpu::wgpuInstanceRelease(context.instance);

	{ // Create Surface
$if $feature(PLATFORM_WIN32):
		Win32_HWND hwnd = glfw::getWin32Window(window);
		Win32_HANDLE handle = win32::getModuleHandleA(null);

		context.surface = wgpu::wgpuInstanceCreateSurface(
			context.instance,
			&&wgpu::WGPUSurfaceDescriptor{
				.nextInChain = (WGPUChainedStruct*)&&wgpu::WGPUSurfaceDescriptorFromWindowsHWND{
					.chain = 
					{
						.sType = wgpu::WGPUSTYPE_SURFACEDESCRIPTORFROMWINDOWSHWND
					},
					.hinstance = handle,
					.hwnd = hwnd
				}
			}
		);
$endif
$if $feature(PLATFORM_WEB):
		context.surface = wgpu::wgpuInstanceCreateSurface(
			context.instance,
			&&wgpu::WGPUSurfaceDescriptor{
				.nextInChain = (WGPUChainedStruct*)&&wgpu::WGPUSurfaceDescriptorFromCanvasHTMLSelector{
					.chain = 
					{
						.sType = wgpu::WGPUSTYPE_SURFACEDESCRIPTORFROMCANVASHTMLSELECTOR
					},
					.selector = "#wgpu_canvas"
				}
			}
		);
$endif

		if (context.surface == null)
		{
			io::printn("Failed to create wgpu surface!");
			return 1;
		}
	}
	defer wgpu::wgpuSurfaceRelease(context.surface);

	wgpu::wgpuInstanceRequestAdapter(
		context.instance, 
		&&wgpu::WGPURequestAdapterOptions{
			.compatibleSurface = context.surface
		},
		fn (WGPURequestAdapterStatus status, WGPUAdapter adapter, char* message, void* userdata)
		{
			if (status == wgpu::WGPUREQUESTADAPTERSTATUS_SUCCESS)
			{
				Context* context = (Context*)userdata;
				context.adapter = adapter;
			} 
			else
			{
				io::printn(message);
			}
		},
		&context
	);
	if (context.adapter == null)
	{
		io::printn("Failed to create wgpu adapter!");
		return 1;
	}
	defer wgpu::wgpuAdapterRelease(context.adapter);

	wgpu::wgpuAdapterRequestDevice(
		context.adapter, 
		null,
		fn (WGPURequestDeviceStatus status, WGPUDevice device, char* message, void* userdata)
		{
			if (status == wgpu::WGPUREQUESTDEVICESTATUS_SUCCESS)
			{
				Context* context = (Context*)userdata;
				context.device = device;
			} 
			else
			{
				io::printn(message);
			}
		},
		&context
	);
	if (context.device == null)
	{
		io::printn("Failed to create wgpu device!");
		return 1;
	}
	defer wgpu::wgpuDeviceRelease(context.device);

	wgpu::WGPUQueue queue = wgpu::wgpuDeviceGetQueue(context.device);
	if (queue == null)
	{
		io::printn("Failed to create wgpu queue!");
		return 1;
	}
	defer wgpu::wgpuQueueRelease(queue);

	wgpu::WGPUShaderModule shaderModule = loadShaderModule(context.device);
	if (shaderModule == null)
	{
		io::printn("Failed to load wgpu shader module!");
		return 1;
	}
	defer wgpu::wgpuShaderModuleRelease(shaderModule);

	wgpu::WGPUPipelineLayout pipelineLayout = wgpu::wgpuDeviceCreatePipelineLayout(
		context.device, 
		&&WGPUPipelineLayoutDescriptor{
			.label = "pipelineLayout",
		});
	if (pipelineLayout == null)
	{
		io::printn("Failed to create wgpu pipeline layout!");
		return 1;
	}
	defer wgpu::wgpuPipelineLayoutRelease(pipelineLayout);

	wgpu::WGPUSurfaceCapabilities surfaceCapabilities = {};
	wgpu::wgpuSurfaceGetCapabilities(context.surface, context.adapter, &surfaceCapabilities);

	WGPURenderPipeline renderPipeline = wgpu::wgpuDeviceCreateRenderPipeline(
      context.device,
      &&wgpu::WGPURenderPipelineDescriptor{
          .label = "renderPipeline",
          .layout = pipelineLayout,
          .vertex =
              wgpu::WGPUVertexState{
                  .module_ = shaderModule,
                  .entryPoint = "vs_main",
              },
          .fragment = &&wgpu::WGPUFragmentState{
                  .module_ = shaderModule,
                  .entryPoint = "fs_main",
                  .targetCount = 1,
                  .targets = wgpu::WGPUColorTargetState[]{
                          wgpu::WGPUColorTargetState{
                              .format = surfaceCapabilities.formats[0],
                              .writeMask = wgpu::WGPUCOLORWRITEMASK_ALL,
                          },
                      },
              },
          .primitive = wgpu::WGPUPrimitiveState{
                  .topology = wgpu::WGPUPRIMITIVETOPOLOGY_TRIANGLELIST,
              },
          .multisample = wgpu::WGPUMultisampleState{
                  .count = 1,
                  .mask = 0xFFFFFFFF,
              },
      });
	if (renderPipeline == null)
	{
		io::printn("Failed to create wgpu render pipeline!");
		return 1;
	}
	defer wgpu::wgpuRenderPipelineRelease(renderPipeline);

	{
		int fbWidth = 0;
		int fbHeight = 0;
		glfw::getFramebufferSize(window, &fbWidth, &fbHeight);
		context.config = {
			.device = context.device,
			.usage = wgpu::WGPUTEXTUREUSAGE_RENDERATTACHMENT,
			.format = surfaceCapabilities.formats[0],
			.presentMode = wgpu::WGPUPRESENTMODE_FIFO,
			.alphaMode = surfaceCapabilities.alphaModes[0],
			.width = fbWidth,
			.height = fbHeight,
		};
		wgpu::wgpuSurfaceConfigure(context.surface, &context.config);
	}

	while(!glfw::windowShouldClose(window))
	{
		glfw::pollEvents();

		wgpu::WGPUSurfaceTexture surfaceTexture;
		wgpu::wgpuSurfaceGetCurrentTexture(context.surface, &surfaceTexture);
		switch (surfaceTexture.status) {
		case wgpu::WGPUSURFACEGETCURRENTTEXTURESTATUS_SUCCESS:
		// All good, could check for `surfaceTexture.suboptimal` here.
		break;
		case wgpu::WGPUSURFACEGETCURRENTTEXTURESTATUS_TIMEOUT:
		case wgpu::WGPUSURFACEGETCURRENTTEXTURESTATUS_OUTDATED:
		case wgpu::WGPUSURFACEGETCURRENTTEXTURESTATUS_LOST: 
		{
			// Skip this frame, and re-configure surface.
			if (surfaceTexture.texture != null) 
			{
				wgpu::wgpuTextureRelease(surfaceTexture.texture);
			}

			int width, height;
			glfw::getFramebufferSize(window, &width, &height);
			
			if (width != 0 && height != 0) 
			{
				context.config.width = width;
				context.config.height = height;
				wgpu::wgpuSurfaceConfigure(context.surface, &context.config);
			}

			continue;
		}
		case wgpu::WGPUSURFACEGETCURRENTTEXTURESTATUS_OUTOFMEMORY:
		case wgpu::WGPUSURFACEGETCURRENTTEXTURESTATUS_DEVICELOST:
		case wgpu::WGPUSURFACEGETCURRENTTEXTURESTATUS_FORCE32:
		io::printn("WGPU Surface is fucked! Fatal error.");
		return 1;
		}
		if (surfaceTexture.texture == null)
		{
			io::printn("Failed to get surface texture!");
			return 1;
		}
		defer wgpu::wgpuTextureRelease(surfaceTexture.texture);

		wgpu::WGPUTextureView frame = wgpu::wgpuTextureCreateView(surfaceTexture.texture, null);
		if (frame == null)
		{
			io::printn("Failed to create texture view!");
			return 1;
		}
		defer wgpu::wgpuTextureViewRelease(frame);

		wgpu::WGPUCommandEncoder commandEncoder = wgpu::wgpuDeviceCreateCommandEncoder(
			context.device, 
			&&wgpu::WGPUCommandEncoderDescriptor{
				.label = "commandEncoder",
			}
		);
		if (commandEncoder == null)
		{
			io::printn("Failed to create command encoder!");
			return 1;
		}
		defer wgpu::wgpuCommandEncoderRelease(commandEncoder);

		wgpu::WGPURenderPassEncoder renderPassEncoder = wgpu::wgpuCommandEncoderBeginRenderPass(
            commandEncoder, 
			&&wgpu::WGPURenderPassDescriptor{
				.label = "renderPassEncoder",
				.colorAttachmentCount = 1,
				.colorAttachments = wgpu::WGPURenderPassColorAttachment[]{
					wgpu::WGPURenderPassColorAttachment{
						.view = frame,
						.loadOp = wgpu::WGPULOADOP_CLEAR,
						.storeOp = wgpu::WGPUSTOREOP_STORE,
						.clearValue = wgpu::WGPUColor{
							.r = 0.0,
							.g = 1.0,
							.b = 0.0,
							.a = 1.0,
						},
					},
				},
			}
		);
		if (renderPassEncoder == null)
		{
			io::printn("Failed to create render pass encoder!");
			return 1;
		}
		defer wgpu::wgpuRenderPassEncoderRelease(renderPassEncoder);

		wgpu::wgpuRenderPassEncoderSetPipeline(renderPassEncoder, renderPipeline);
		wgpu::wgpuRenderPassEncoderDraw(renderPassEncoder, 3, 1, 0, 0);
		wgpu::wgpuRenderPassEncoderEnd(renderPassEncoder);

		wgpu::WGPUCommandBuffer commandBuffer = wgpu::wgpuCommandEncoderFinish(
			commandEncoder, 
			&&wgpu::WGPUCommandBufferDescriptor{
				.label = "commandBuffer",
			}
		);
		if (commandBuffer == null)
		{
			io::printn("Failed to create render pass encoder!");
			return 1;
		}
		defer wgpu::wgpuCommandBufferRelease(commandBuffer);

		wgpu::wgpuQueueSubmit(queue, 1, WGPUCommandBuffer[]{commandBuffer});
		wgpu::wgpuSurfacePresent(context.surface);
	}

	return 0;
}
