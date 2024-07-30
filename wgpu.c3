module wgpu;

const uint WGPU_ARRAY_LAYER_COUNT_UNDEFINED = 0xffffffff;
const uint WGPU_COPY_STRIDE_UNDEFINED = 0xffffffff;
const uint WGPU_LIMIT_U32_UNDEFINED = 0xffffffff;
const ulong WGPU_LIMIT_U64_UNDEFINED = 0xffffffffffffffff;
const uint WGPU_MIP_LEVEL_COUNT_UNDEFINED = 0xffffffff;
const uint WGPU_QUERY_SET_INDEX_UNDEFINED = 0xffffffff;
const ulong WGPU_WHOLE_MAP_SIZE = 0xffffffffffffffff;
const ulong WGPU_WHOLE_SIZE = 0xffffffffffffffff;

def WGPUFlags=uint;
def WGPUBool=uint;

def WGPUAdapter=void*;
def WGPUBindGroup=void*;
def WGPUBindGroupLayout=void*;
def WGPUBuffer=void*;
def WGPUCommandBuffer=void*;
def WGPUCommandEncoder=void*;
def WGPUComputePassEncoder=void*;
def WGPUComputePipeline=void*;
def WGPUDevice=void*;
def WGPUInstance=void*;
def WGPUPipelineLayout=void*;
def WGPUQuerySet=void*;
def WGPUQueue=void*;
def WGPURenderBundle=void*;
def WGPURenderBundleEncoder=void*;
def WGPURenderPassEncoder=void*;
def WGPURenderPipeline=void*;
def WGPUSampler=void*;
def WGPUShaderModule=void*;
def WGPUSurface=void*;
def WGPUTexture=void*;
def WGPUTextureView=void*;



def WGPUAdapterType=uint;
const WGPUAdapterType WGPUADAPTERTYPE_DISCRETEGPU = 0x00000000;
const WGPUAdapterType WGPUADAPTERTYPE_INTEGRATEDGPU = 0x00000001;
const WGPUAdapterType WGPUADAPTERTYPE_CPU = 0x00000002;
const WGPUAdapterType WGPUADAPTERTYPE_UNKNOWN = 0x00000003;
const WGPUAdapterType WGPUADAPTERTYPE_FORCE32 = 0x7FFFFFFF;

def WGPUAddressMode=uint;
const WGPUAddressMode WGPUADDRESSMODE_REPEAT = 0x00000000;
const WGPUAddressMode WGPUADDRESSMODE_MIRRORREPEAT = 0x00000001;
const WGPUAddressMode WGPUADDRESSMODE_CLAMPTOEDGE = 0x00000002;
const WGPUAddressMode WGPUADDRESSMODE_FORCE32 = 0x7FFFFFFF;

def WGPUBackendType=uint;
const WGPUBackendType WGPUBACKENDTYPE_UNDEFINED = 0x00000000;
const WGPUBackendType WGPUBACKENDTYPE_NULL = 0x00000001;
const WGPUBackendType WGPUBACKENDTYPE_WEBGPU = 0x00000002;
const WGPUBackendType WGPUBACKENDTYPE_D3D11 = 0x00000003;
const WGPUBackendType WGPUBACKENDTYPE_D3D12 = 0x00000004;
const WGPUBackendType WGPUBACKENDTYPE_METAL = 0x00000005;
const WGPUBackendType WGPUBACKENDTYPE_VULKAN = 0x00000006;
const WGPUBackendType WGPUBACKENDTYPE_OPENGL = 0x00000007;
const WGPUBackendType WGPUBACKENDTYPE_OPENGLES = 0x00000008;
const WGPUBackendType WGPUBACKENDTYPE_FORCE32 = 0x7FFFFFFF;

def WGPUBlendFactor=uint;
const WGPUBlendFactor WGPUBLENDFACTOR_ZERO = 0x00000000;
const WGPUBlendFactor WGPUBLENDFACTOR_ONE = 0x00000001;
const WGPUBlendFactor WGPUBLENDFACTOR_SRC = 0x00000002;
const WGPUBlendFactor WGPUBLENDFACTOR_ONEMINUSSRC = 0x00000003;
const WGPUBlendFactor WGPUBLENDFACTOR_SRCALPHA = 0x00000004;
const WGPUBlendFactor WGPUBLENDFACTOR_ONEMINUSSRCALPHA = 0x00000005;
const WGPUBlendFactor WGPUBLENDFACTOR_DST = 0x00000006;
const WGPUBlendFactor WGPUBLENDFACTOR_ONEMINUSDST = 0x00000007;
const WGPUBlendFactor WGPUBLENDFACTOR_DSTALPHA = 0x00000008;
const WGPUBlendFactor WGPUBLENDFACTOR_ONEMINUSDSTALPHA = 0x00000009;
const WGPUBlendFactor WGPUBLENDFACTOR_SRCALPHASATURATED = 0x0000000A;
const WGPUBlendFactor WGPUBLENDFACTOR_CONSTANT = 0x0000000B;
const WGPUBlendFactor WGPUBLENDFACTOR_ONEMINUSCONSTANT = 0x0000000C;
const WGPUBlendFactor WGPUBLENDFACTOR_FORCE32 = 0x7FFFFFFF;

def WGPUBlendOperation=uint;
const WGPUBlendOperation WGPUBLENDOPERATION_ADD = 0x00000000;
const WGPUBlendOperation WGPUBLENDOPERATION_SUBTRACT = 0x00000001;
const WGPUBlendOperation WGPUBLENDOPERATION_REVERSESUBTRACT = 0x00000002;
const WGPUBlendOperation WGPUBLENDOPERATION_MIN = 0x00000003;
const WGPUBlendOperation WGPUBLENDOPERATION_MAX = 0x00000004;
const WGPUBlendOperation WGPUBLENDOPERATION_FORCE32 = 0x7FFFFFFF;

def WGPUBufferBindingType=uint;
const WGPUBufferBindingType WGPUBUFFERBINDINGTYPE_UNDEFINED = 0x00000000;
const WGPUBufferBindingType WGPUBUFFERBINDINGTYPE_UNIFORM = 0x00000001;
const WGPUBufferBindingType WGPUBUFFERBINDINGTYPE_STORAGE = 0x00000002;
const WGPUBufferBindingType WGPUBUFFERBINDINGTYPE_READONLYSTORAGE = 0x00000003;
const WGPUBufferBindingType WGPUBUFFERBINDINGTYPE_FORCE32 = 0x7FFFFFFF;

def WGPUBufferMapAsyncStatus=uint;
const WGPUBufferMapAsyncStatus WGPUBUFFERMAPASYNCSTATUS_SUCCESS = 0x00000000;
const WGPUBufferMapAsyncStatus WGPUBUFFERMAPASYNCSTATUS_VALIDATIONERROR = 0x00000001;
const WGPUBufferMapAsyncStatus WGPUBUFFERMAPASYNCSTATUS_UNKNOWN = 0x00000002;
const WGPUBufferMapAsyncStatus WGPUBUFFERMAPASYNCSTATUS_DEVICELOST = 0x00000003;
const WGPUBufferMapAsyncStatus WGPUBUFFERMAPASYNCSTATUS_DESTROYEDBEFORECALLBACK = 0x00000004;
const WGPUBufferMapAsyncStatus WGPUBUFFERMAPASYNCSTATUS_UNMAPPEDBEFORECALLBACK = 0x00000005;
const WGPUBufferMapAsyncStatus WGPUBUFFERMAPASYNCSTATUS_MAPPINGALREADYPENDING = 0x00000006;
const WGPUBufferMapAsyncStatus WGPUBUFFERMAPASYNCSTATUS_OFFSETOUTOFRANGE = 0x00000007;
const WGPUBufferMapAsyncStatus WGPUBUFFERMAPASYNCSTATUS_SIZEOUTOFRANGE = 0x00000008;
const WGPUBufferMapAsyncStatus WGPUBUFFERMAPASYNCSTATUS_FORCE32 = 0x7FFFFFFF;

def WGPUBufferMapState=uint;
const WGPUBufferMapState WGPUBUFFERMAPSTATE_UNMAPPED = 0x00000000;
const WGPUBufferMapState WGPUBUFFERMAPSTATE_PENDING = 0x00000001;
const WGPUBufferMapState WGPUBUFFERMAPSTATE_MAPPED = 0x00000002;
const WGPUBufferMapState WGPUBUFFERMAPSTATE_FORCE32 = 0x7FFFFFFF;

def WGPUCompareFunction=uint;
const WGPUCompareFunction WGPUCOMPAREFUNCTION_UNDEFINED = 0x00000000;
const WGPUCompareFunction WGPUCOMPAREFUNCTION_NEVER = 0x00000001;
const WGPUCompareFunction WGPUCOMPAREFUNCTION_LESS = 0x00000002;
const WGPUCompareFunction WGPUCOMPAREFUNCTION_LESSEQUAL = 0x00000003;
const WGPUCompareFunction WGPUCOMPAREFUNCTION_GREATER = 0x00000004;
const WGPUCompareFunction WGPUCOMPAREFUNCTION_GREATEREQUAL = 0x00000005;
const WGPUCompareFunction WGPUCOMPAREFUNCTION_EQUAL = 0x00000006;
const WGPUCompareFunction WGPUCOMPAREFUNCTION_NOTEQUAL = 0x00000007;
const WGPUCompareFunction WGPUCOMPAREFUNCTION_ALWAYS = 0x00000008;
const WGPUCompareFunction WGPUCOMPAREFUNCTION_FORCE32 = 0x7FFFFFFF;

def WGPUCompilationInfoRequestStatus=uint;
const WGPUCompilationInfoRequestStatus WGPUCOMPILATIONINFOREQUESTSTATUS_SUCCESS = 0x00000000;
const WGPUCompilationInfoRequestStatus WGPUCOMPILATIONINFOREQUESTSTATUS_ERROR = 0x00000001;
const WGPUCompilationInfoRequestStatus WGPUCOMPILATIONINFOREQUESTSTATUS_DEVICELOST = 0x00000002;
const WGPUCompilationInfoRequestStatus WGPUCOMPILATIONINFOREQUESTSTATUS_UNKNOWN = 0x00000003;
const WGPUCompilationInfoRequestStatus WGPUCOMPILATIONINFOREQUESTSTATUS_FORCE32 = 0x7FFFFFFF;

def WGPUCompilationMessageType=uint;
const WGPUCompilationMessageType WGPUCOMPILATIONMESSAGETYPE_ERROR = 0x00000000;
const WGPUCompilationMessageType WGPUCOMPILATIONMESSAGETYPE_WARNING = 0x00000001;
const WGPUCompilationMessageType WGPUCOMPILATIONMESSAGETYPE_INFO = 0x00000002;
const WGPUCompilationMessageType WGPUCOMPILATIONMESSAGETYPE_FORCE32 = 0x7FFFFFFF;

def WGPUCompositeAlphaMode=uint;
const WGPUCompositeAlphaMode WGPUCOMPOSITEALPHAMODE_AUTO = 0x00000000;
const WGPUCompositeAlphaMode WGPUCOMPOSITEALPHAMODE_OPAQUE = 0x00000001;
const WGPUCompositeAlphaMode WGPUCOMPOSITEALPHAMODE_PREMULTIPLIED = 0x00000002;
const WGPUCompositeAlphaMode WGPUCOMPOSITEALPHAMODE_UNPREMULTIPLIED = 0x00000003;
const WGPUCompositeAlphaMode WGPUCOMPOSITEALPHAMODE_INHERIT = 0x00000004;
const WGPUCompositeAlphaMode WGPUCOMPOSITEALPHAMODE_FORCE32 = 0x7FFFFFFF;

def WGPUCreatePipelineAsyncStatus=uint;
const WGPUCreatePipelineAsyncStatus WGPUCREATEPIPELINEASYNCSTATUS_SUCCESS = 0x00000000;
const WGPUCreatePipelineAsyncStatus WGPUCREATEPIPELINEASYNCSTATUS_VALIDATIONERROR = 0x00000001;
const WGPUCreatePipelineAsyncStatus WGPUCREATEPIPELINEASYNCSTATUS_INTERNALERROR = 0x00000002;
const WGPUCreatePipelineAsyncStatus WGPUCREATEPIPELINEASYNCSTATUS_DEVICELOST = 0x00000003;
const WGPUCreatePipelineAsyncStatus WGPUCREATEPIPELINEASYNCSTATUS_DEVICEDESTROYED = 0x00000004;
const WGPUCreatePipelineAsyncStatus WGPUCREATEPIPELINEASYNCSTATUS_UNKNOWN = 0x00000005;
const WGPUCreatePipelineAsyncStatus WGPUCREATEPIPELINEASYNCSTATUS_FORCE32 = 0x7FFFFFFF;

def WGPUCullMode=uint;
const WGPUCullMode WGPUCULLMODE_NONE = 0x00000000;
const WGPUCullMode WGPUCULLMODE_FRONT = 0x00000001;
const WGPUCullMode WGPUCULLMODE_BACK = 0x00000002;
const WGPUCullMode WGPUCULLMODE_FORCE32 = 0x7FFFFFFF;

def WGPUDeviceLostReason=uint;
const WGPUDeviceLostReason WGPUDEVICELOSTREASON_UNDEFINED = 0x00000000;
const WGPUDeviceLostReason WGPUDEVICELOSTREASON_DESTROYED = 0x00000001;
const WGPUDeviceLostReason WGPUDEVICELOSTREASON_FORCE32 = 0x7FFFFFFF;

def WGPUErrorFilter=uint;
const WGPUErrorFilter WGPUERRORFILTER_VALIDATION = 0x00000000;
const WGPUErrorFilter WGPUERRORFILTER_OUTOFMEMORY = 0x00000001;
const WGPUErrorFilter WGPUERRORFILTER_INTERNAL = 0x00000002;
const WGPUErrorFilter WGPUERRORFILTER_FORCE32 = 0x7FFFFFFF;

def WGPUErrorType=uint;
const WGPUErrorType WGPUERRORTYPE_NOERROR = 0x00000000;
const WGPUErrorType WGPUERRORTYPE_VALIDATION = 0x00000001;
const WGPUErrorType WGPUERRORTYPE_OUTOFMEMORY = 0x00000002;
const WGPUErrorType WGPUERRORTYPE_INTERNAL = 0x00000003;
const WGPUErrorType WGPUERRORTYPE_UNKNOWN = 0x00000004;
const WGPUErrorType WGPUERRORTYPE_DEVICELOST = 0x00000005;
const WGPUErrorType WGPUERRORTYPE_FORCE32 = 0x7FFFFFFF;

def WGPUFeatureName=uint;
const WGPUFeatureName WGPUFEATURENAME_UNDEFINED = 0x00000000;
const WGPUFeatureName WGPUFEATURENAME_DEPTHCLIPCONTROL = 0x00000001;
const WGPUFeatureName WGPUFEATURENAME_DEPTH32FLOATSTENCIL8 = 0x00000002;
const WGPUFeatureName WGPUFEATURENAME_TIMESTAMPQUERY = 0x00000003;
const WGPUFeatureName WGPUFEATURENAME_TEXTURECOMPRESSIONBC = 0x00000004;
const WGPUFeatureName WGPUFEATURENAME_TEXTURECOMPRESSIONETC2 = 0x00000005;
const WGPUFeatureName WGPUFEATURENAME_TEXTURECOMPRESSIONASTC = 0x00000006;
const WGPUFeatureName WGPUFEATURENAME_INDIRECTFIRSTINSTANCE = 0x00000007;
const WGPUFeatureName WGPUFEATURENAME_SHADERF16 = 0x00000008;
const WGPUFeatureName WGPUFEATURENAME_RG11B10UFLOATRENDERABLE = 0x00000009;
const WGPUFeatureName WGPUFEATURENAME_BGRA8UNORMSTORAGE = 0x0000000A;
const WGPUFeatureName WGPUFEATURENAME_FLOAT32FILTERABLE = 0x0000000B;
const WGPUFeatureName WGPUFEATURENAME_FORCE32 = 0x7FFFFFFF;

def WGPUFilterMode=uint;
const WGPUFilterMode WGPUFILTERMODE_NEAREST = 0x00000000;
const WGPUFilterMode WGPUFILTERMODE_LINEAR = 0x00000001;
const WGPUFilterMode WGPUFILTERMODE_FORCE32 = 0x7FFFFFFF;

def WGPUFrontFace=uint;
const WGPUFrontFace WGPUFRONTFACE_CCW = 0x00000000;
const WGPUFrontFace WGPUFRONTFACE_CW = 0x00000001;
const WGPUFrontFace WGPUFRONTFACE_FORCE32 = 0x7FFFFFFF;

def WGPUIndexFormat=uint;
const WGPUIndexFormat WGPUINDEXFORMAT_UNDEFINED = 0x00000000;
const WGPUIndexFormat WGPUINDEXFORMAT_UINT16 = 0x00000001;
const WGPUIndexFormat WGPUINDEXFORMAT_UINT32 = 0x00000002;
const WGPUIndexFormat WGPUINDEXFORMAT_FORCE32 = 0x7FFFFFFF;

def WGPULoadOp=uint;
const WGPULoadOp WGPULOADOP_UNDEFINED = 0x00000000;
const WGPULoadOp WGPULOADOP_CLEAR = 0x00000001;
const WGPULoadOp WGPULOADOP_LOAD = 0x00000002;
const WGPULoadOp WGPULOADOP_FORCE32 = 0x7FFFFFFF;

def WGPUMipmapFilterMode=uint;
const WGPUMipmapFilterMode WGPUMIPMAPFILTERMODE_NEAREST = 0x00000000;
const WGPUMipmapFilterMode WGPUMIPMAPFILTERMODE_LINEAR = 0x00000001;
const WGPUMipmapFilterMode WGPUMIPMAPFILTERMODE_FORCE32 = 0x7FFFFFFF;

def WGPUPowerPreference=uint;
const WGPUPowerPreference WGPUPOWERPREFERENCE_UNDEFINED = 0x00000000;
const WGPUPowerPreference WGPUPOWERPREFERENCE_LOWPOWER = 0x00000001;
const WGPUPowerPreference WGPUPOWERPREFERENCE_HIGHPERFORMANCE = 0x00000002;
const WGPUPowerPreference WGPUPOWERPREFERENCE_FORCE32 = 0x7FFFFFFF;

def WGPUPresentMode=uint;
const WGPUPresentMode WGPUPRESENTMODE_FIFO = 0x00000000;
const WGPUPresentMode WGPUPRESENTMODE_FIFORELAXED = 0x00000001;
const WGPUPresentMode WGPUPRESENTMODE_IMMEDIATE = 0x00000002;
const WGPUPresentMode WGPUPRESENTMODE_MAILBOX = 0x00000003;
const WGPUPresentMode WGPUPRESENTMODE_FORCE32 = 0x7FFFFFFF;

def WGPUPrimitiveTopology=uint;
const WGPUPrimitiveTopology WGPUPRIMITIVETOPOLOGY_POINTLIST = 0x00000000;
const WGPUPrimitiveTopology WGPUPRIMITIVETOPOLOGY_LINELIST = 0x00000001;
const WGPUPrimitiveTopology WGPUPRIMITIVETOPOLOGY_LINESTRIP = 0x00000002;
const WGPUPrimitiveTopology WGPUPRIMITIVETOPOLOGY_TRIANGLELIST = 0x00000003;
const WGPUPrimitiveTopology WGPUPRIMITIVETOPOLOGY_TRIANGLESTRIP = 0x00000004;
const WGPUPrimitiveTopology WGPUPRIMITIVETOPOLOGY_FORCE32 = 0x7FFFFFFF;

def WGPUQueryType=uint;
const WGPUQueryType WGPUQUERYTYPE_OCCLUSION = 0x00000000;
const WGPUQueryType WGPUQUERYTYPE_TIMESTAMP = 0x00000001;
const WGPUQueryType WGPUQUERYTYPE_FORCE32 = 0x7FFFFFFF;

def WGPUQueueWorkDoneStatus=uint;
const WGPUQueueWorkDoneStatus WGPUQUEUEWORKDONESTATUS_SUCCESS = 0x00000000;
const WGPUQueueWorkDoneStatus WGPUQUEUEWORKDONESTATUS_ERROR = 0x00000001;
const WGPUQueueWorkDoneStatus WGPUQUEUEWORKDONESTATUS_UNKNOWN = 0x00000002;
const WGPUQueueWorkDoneStatus WGPUQUEUEWORKDONESTATUS_DEVICELOST = 0x00000003;
const WGPUQueueWorkDoneStatus WGPUQUEUEWORKDONESTATUS_FORCE32 = 0x7FFFFFFF;

def WGPURequestAdapterStatus=uint;
const WGPURequestAdapterStatus WGPUREQUESTADAPTERSTATUS_SUCCESS = 0x00000000;
const WGPURequestAdapterStatus WGPUREQUESTADAPTERSTATUS_UNAVAILABLE = 0x00000001;
const WGPURequestAdapterStatus WGPUREQUESTADAPTERSTATUS_ERROR = 0x00000002;
const WGPURequestAdapterStatus WGPUREQUESTADAPTERSTATUS_UNKNOWN = 0x00000003;
const WGPURequestAdapterStatus WGPUREQUESTADAPTERSTATUS_FORCE32 = 0x7FFFFFFF;

def WGPURequestDeviceStatus=uint;
const WGPURequestDeviceStatus WGPUREQUESTDEVICESTATUS_SUCCESS = 0x00000000;
const WGPURequestDeviceStatus WGPUREQUESTDEVICESTATUS_ERROR = 0x00000001;
const WGPURequestDeviceStatus WGPUREQUESTDEVICESTATUS_UNKNOWN = 0x00000002;
const WGPURequestDeviceStatus WGPUREQUESTDEVICESTATUS_FORCE32 = 0x7FFFFFFF;

def WGPUSType=uint;
const WGPUSType WGPUSTYPE_INVALID = 0x00000000;
const WGPUSType WGPUSTYPE_SURFACEDESCRIPTORFROMMETALLAYER = 0x00000001;
const WGPUSType WGPUSTYPE_SURFACEDESCRIPTORFROMWINDOWSHWND = 0x00000002;
const WGPUSType WGPUSTYPE_SURFACEDESCRIPTORFROMXLIBWINDOW = 0x00000003;
const WGPUSType WGPUSTYPE_SURFACEDESCRIPTORFROMCANVASHTMLSELECTOR = 0x00000004;
const WGPUSType WGPUSTYPE_SHADERMODULESPIRVDESCRIPTOR = 0x00000005;
const WGPUSType WGPUSTYPE_SHADERMODULEWGSLDESCRIPTOR = 0x00000006;
const WGPUSType WGPUSTYPE_PRIMITIVEDEPTHCLIPCONTROL = 0x00000007;
const WGPUSType WGPUSTYPE_SURFACEDESCRIPTORFROMWAYLANDSURFACE = 0x00000008;
const WGPUSType WGPUSTYPE_SURFACEDESCRIPTORFROMANDROIDNATIVEWINDOW = 0x00000009;
const WGPUSType WGPUSTYPE_SURFACEDESCRIPTORFROMXCBWINDOW = 0x0000000A;
const WGPUSType WGPUSTYPE_RENDERPASSDESCRIPTORMAXDRAWCOUNT = 0x0000000F;
const WGPUSType WGPUSTYPE_FORCE32 = 0x7FFFFFFF;

def WGPUSamplerBindingType=uint;
const WGPUSamplerBindingType WGPUSAMPLERBINDINGTYPE_UNDEFINED = 0x00000000;
const WGPUSamplerBindingType WGPUSAMPLERBINDINGTYPE_FILTERING = 0x00000001;
const WGPUSamplerBindingType WGPUSAMPLERBINDINGTYPE_NONFILTERING = 0x00000002;
const WGPUSamplerBindingType WGPUSAMPLERBINDINGTYPE_COMPARISON = 0x00000003;
const WGPUSamplerBindingType WGPUSAMPLERBINDINGTYPE_FORCE32 = 0x7FFFFFFF;

def WGPUStencilOperation=uint;
const WGPUStencilOperation WGPUSTENCILOPERATION_KEEP = 0x00000000;
const WGPUStencilOperation WGPUSTENCILOPERATION_ZERO = 0x00000001;
const WGPUStencilOperation WGPUSTENCILOPERATION_REPLACE = 0x00000002;
const WGPUStencilOperation WGPUSTENCILOPERATION_INVERT = 0x00000003;
const WGPUStencilOperation WGPUSTENCILOPERATION_INCREMENTCLAMP = 0x00000004;
const WGPUStencilOperation WGPUSTENCILOPERATION_DECREMENTCLAMP = 0x00000005;
const WGPUStencilOperation WGPUSTENCILOPERATION_INCREMENTWRAP = 0x00000006;
const WGPUStencilOperation WGPUSTENCILOPERATION_DECREMENTWRAP = 0x00000007;
const WGPUStencilOperation WGPUSTENCILOPERATION_FORCE32 = 0x7FFFFFFF;

def WGPUStorageTextureAccess=uint;
const WGPUStorageTextureAccess WGPUSTORAGETEXTUREACCESS_UNDEFINED = 0x00000000;
const WGPUStorageTextureAccess WGPUSTORAGETEXTUREACCESS_WRITEONLY = 0x00000001;
const WGPUStorageTextureAccess WGPUSTORAGETEXTUREACCESS_READONLY = 0x00000002;
const WGPUStorageTextureAccess WGPUSTORAGETEXTUREACCESS_READWRITE = 0x00000003;
const WGPUStorageTextureAccess WGPUSTORAGETEXTUREACCESS_FORCE32 = 0x7FFFFFFF;

def WGPUStoreOp=uint;
const WGPUStoreOp WGPUSTOREOP_UNDEFINED = 0x00000000;
const WGPUStoreOp WGPUSTOREOP_STORE = 0x00000001;
const WGPUStoreOp WGPUSTOREOP_DISCARD = 0x00000002;
const WGPUStoreOp WGPUSTOREOP_FORCE32 = 0x7FFFFFFF;

def WGPUSurfaceGetCurrentTextureStatus=uint;
const WGPUSurfaceGetCurrentTextureStatus WGPUSURFACEGETCURRENTTEXTURESTATUS_SUCCESS = 0x00000000;
const WGPUSurfaceGetCurrentTextureStatus WGPUSURFACEGETCURRENTTEXTURESTATUS_TIMEOUT = 0x00000001;
const WGPUSurfaceGetCurrentTextureStatus WGPUSURFACEGETCURRENTTEXTURESTATUS_OUTDATED = 0x00000002;
const WGPUSurfaceGetCurrentTextureStatus WGPUSURFACEGETCURRENTTEXTURESTATUS_LOST = 0x00000003;
const WGPUSurfaceGetCurrentTextureStatus WGPUSURFACEGETCURRENTTEXTURESTATUS_OUTOFMEMORY = 0x00000004;
const WGPUSurfaceGetCurrentTextureStatus WGPUSURFACEGETCURRENTTEXTURESTATUS_DEVICELOST = 0x00000005;
const WGPUSurfaceGetCurrentTextureStatus WGPUSURFACEGETCURRENTTEXTURESTATUS_FORCE32 = 0x7FFFFFFF;

def WGPUTextureAspect=uint;
const WGPUTextureAspect WGPUTEXTUREASPECT_ALL = 0x00000000;
const WGPUTextureAspect WGPUTEXTUREASPECT_STENCILONLY = 0x00000001;
const WGPUTextureAspect WGPUTEXTUREASPECT_DEPTHONLY = 0x00000002;
const WGPUTextureAspect WGPUTEXTUREASPECT_FORCE32 = 0x7FFFFFFF;

def WGPUTextureDimension=uint;
const WGPUTextureDimension WGPUTEXTUREDIMENSION_1D = 0x00000000;
const WGPUTextureDimension WGPUTEXTUREDIMENSION_2D = 0x00000001;
const WGPUTextureDimension WGPUTEXTUREDIMENSION_3D = 0x00000002;
const WGPUTextureDimension WGPUTEXTUREDIMENSION_FORCE32 = 0x7FFFFFFF;

def WGPUTextureFormat=uint;
const WGPUTextureFormat WGPUTEXTUREFORMAT_UNDEFINED = 0x00000000;
const WGPUTextureFormat WGPUTEXTUREFORMAT_R8UNORM = 0x00000001;
const WGPUTextureFormat WGPUTEXTUREFORMAT_R8SNORM = 0x00000002;
const WGPUTextureFormat WGPUTEXTUREFORMAT_R8UINT = 0x00000003;
const WGPUTextureFormat WGPUTEXTUREFORMAT_R8SINT = 0x00000004;
const WGPUTextureFormat WGPUTEXTUREFORMAT_R16UINT = 0x00000005;
const WGPUTextureFormat WGPUTEXTUREFORMAT_R16SINT = 0x00000006;
const WGPUTextureFormat WGPUTEXTUREFORMAT_R16FLOAT = 0x00000007;
const WGPUTextureFormat WGPUTEXTUREFORMAT_RG8UNORM = 0x00000008;
const WGPUTextureFormat WGPUTEXTUREFORMAT_RG8SNORM = 0x00000009;
const WGPUTextureFormat WGPUTEXTUREFORMAT_RG8UINT = 0x0000000A;
const WGPUTextureFormat WGPUTEXTUREFORMAT_RG8SINT = 0x0000000B;
const WGPUTextureFormat WGPUTEXTUREFORMAT_R32FLOAT = 0x0000000C;
const WGPUTextureFormat WGPUTEXTUREFORMAT_R32UINT = 0x0000000D;
const WGPUTextureFormat WGPUTEXTUREFORMAT_R32SINT = 0x0000000E;
const WGPUTextureFormat WGPUTEXTUREFORMAT_RG16UINT = 0x0000000F;
const WGPUTextureFormat WGPUTEXTUREFORMAT_RG16SINT = 0x00000010;
const WGPUTextureFormat WGPUTEXTUREFORMAT_RG16FLOAT = 0x00000011;
const WGPUTextureFormat WGPUTEXTUREFORMAT_RGBA8UNORM = 0x00000012;
const WGPUTextureFormat WGPUTEXTUREFORMAT_RGBA8UNORMSRGB = 0x00000013;
const WGPUTextureFormat WGPUTEXTUREFORMAT_RGBA8SNORM = 0x00000014;
const WGPUTextureFormat WGPUTEXTUREFORMAT_RGBA8UINT = 0x00000015;
const WGPUTextureFormat WGPUTEXTUREFORMAT_RGBA8SINT = 0x00000016;
const WGPUTextureFormat WGPUTEXTUREFORMAT_BGRA8UNORM = 0x00000017;
const WGPUTextureFormat WGPUTEXTUREFORMAT_BGRA8UNORMSRGB = 0x00000018;
const WGPUTextureFormat WGPUTEXTUREFORMAT_RGB10A2UINT = 0x00000019;
const WGPUTextureFormat WGPUTEXTUREFORMAT_RGB10A2UNORM = 0x0000001A;
const WGPUTextureFormat WGPUTEXTUREFORMAT_RG11B10UFLOAT = 0x0000001B;
const WGPUTextureFormat WGPUTEXTUREFORMAT_RGB9E5UFLOAT = 0x0000001C;
const WGPUTextureFormat WGPUTEXTUREFORMAT_RG32FLOAT = 0x0000001D;
const WGPUTextureFormat WGPUTEXTUREFORMAT_RG32UINT = 0x0000001E;
const WGPUTextureFormat WGPUTEXTUREFORMAT_RG32SINT = 0x0000001F;
const WGPUTextureFormat WGPUTEXTUREFORMAT_RGBA16UINT = 0x00000020;
const WGPUTextureFormat WGPUTEXTUREFORMAT_RGBA16SINT = 0x00000021;
const WGPUTextureFormat WGPUTEXTUREFORMAT_RGBA16FLOAT = 0x00000022;
const WGPUTextureFormat WGPUTEXTUREFORMAT_RGBA32FLOAT = 0x00000023;
const WGPUTextureFormat WGPUTEXTUREFORMAT_RGBA32UINT = 0x00000024;
const WGPUTextureFormat WGPUTEXTUREFORMAT_RGBA32SINT = 0x00000025;
const WGPUTextureFormat WGPUTEXTUREFORMAT_STENCIL8 = 0x00000026;
const WGPUTextureFormat WGPUTEXTUREFORMAT_DEPTH16UNORM = 0x00000027;
const WGPUTextureFormat WGPUTEXTUREFORMAT_DEPTH24PLUS = 0x00000028;
const WGPUTextureFormat WGPUTEXTUREFORMAT_DEPTH24PLUSSTENCIL8 = 0x00000029;
const WGPUTextureFormat WGPUTEXTUREFORMAT_DEPTH32FLOAT = 0x0000002A;
const WGPUTextureFormat WGPUTEXTUREFORMAT_DEPTH32FLOATSTENCIL8 = 0x0000002B;
const WGPUTextureFormat WGPUTEXTUREFORMAT_BC1RGBAUNORM = 0x0000002C;
const WGPUTextureFormat WGPUTEXTUREFORMAT_BC1RGBAUNORMSRGB = 0x0000002D;
const WGPUTextureFormat WGPUTEXTUREFORMAT_BC2RGBAUNORM = 0x0000002E;
const WGPUTextureFormat WGPUTEXTUREFORMAT_BC2RGBAUNORMSRGB = 0x0000002F;
const WGPUTextureFormat WGPUTEXTUREFORMAT_BC3RGBAUNORM = 0x00000030;
const WGPUTextureFormat WGPUTEXTUREFORMAT_BC3RGBAUNORMSRGB = 0x00000031;
const WGPUTextureFormat WGPUTEXTUREFORMAT_BC4RUNORM = 0x00000032;
const WGPUTextureFormat WGPUTEXTUREFORMAT_BC4RSNORM = 0x00000033;
const WGPUTextureFormat WGPUTEXTUREFORMAT_BC5RGUNORM = 0x00000034;
const WGPUTextureFormat WGPUTEXTUREFORMAT_BC5RGSNORM = 0x00000035;
const WGPUTextureFormat WGPUTEXTUREFORMAT_BC6HRGBUFLOAT = 0x00000036;
const WGPUTextureFormat WGPUTEXTUREFORMAT_BC6HRGBFLOAT = 0x00000037;
const WGPUTextureFormat WGPUTEXTUREFORMAT_BC7RGBAUNORM = 0x00000038;
const WGPUTextureFormat WGPUTEXTUREFORMAT_BC7RGBAUNORMSRGB = 0x00000039;
const WGPUTextureFormat WGPUTEXTUREFORMAT_ETC2RGB8UNORM = 0x0000003A;
const WGPUTextureFormat WGPUTEXTUREFORMAT_ETC2RGB8UNORMSRGB = 0x0000003B;
const WGPUTextureFormat WGPUTEXTUREFORMAT_ETC2RGB8A1UNORM = 0x0000003C;
const WGPUTextureFormat WGPUTEXTUREFORMAT_ETC2RGB8A1UNORMSRGB = 0x0000003D;
const WGPUTextureFormat WGPUTEXTUREFORMAT_ETC2RGBA8UNORM = 0x0000003E;
const WGPUTextureFormat WGPUTEXTUREFORMAT_ETC2RGBA8UNORMSRGB = 0x0000003F;
const WGPUTextureFormat WGPUTEXTUREFORMAT_EACR11UNORM = 0x00000040;
const WGPUTextureFormat WGPUTEXTUREFORMAT_EACR11SNORM = 0x00000041;
const WGPUTextureFormat WGPUTEXTUREFORMAT_EACRG11UNORM = 0x00000042;
const WGPUTextureFormat WGPUTEXTUREFORMAT_EACRG11SNORM = 0x00000043;
const WGPUTextureFormat WGPUTEXTUREFORMAT_ASTC4X4UNORM = 0x00000044;
const WGPUTextureFormat WGPUTEXTUREFORMAT_ASTC4X4UNORMSRGB = 0x00000045;
const WGPUTextureFormat WGPUTEXTUREFORMAT_ASTC5X4UNORM = 0x00000046;
const WGPUTextureFormat WGPUTEXTUREFORMAT_ASTC5X4UNORMSRGB = 0x00000047;
const WGPUTextureFormat WGPUTEXTUREFORMAT_ASTC5X5UNORM = 0x00000048;
const WGPUTextureFormat WGPUTEXTUREFORMAT_ASTC5X5UNORMSRGB = 0x00000049;
const WGPUTextureFormat WGPUTEXTUREFORMAT_ASTC6X5UNORM = 0x0000004A;
const WGPUTextureFormat WGPUTEXTUREFORMAT_ASTC6X5UNORMSRGB = 0x0000004B;
const WGPUTextureFormat WGPUTEXTUREFORMAT_ASTC6X6UNORM = 0x0000004C;
const WGPUTextureFormat WGPUTEXTUREFORMAT_ASTC6X6UNORMSRGB = 0x0000004D;
const WGPUTextureFormat WGPUTEXTUREFORMAT_ASTC8X5UNORM = 0x0000004E;
const WGPUTextureFormat WGPUTEXTUREFORMAT_ASTC8X5UNORMSRGB = 0x0000004F;
const WGPUTextureFormat WGPUTEXTUREFORMAT_ASTC8X6UNORM = 0x00000050;
const WGPUTextureFormat WGPUTEXTUREFORMAT_ASTC8X6UNORMSRGB = 0x00000051;
const WGPUTextureFormat WGPUTEXTUREFORMAT_ASTC8X8UNORM = 0x00000052;
const WGPUTextureFormat WGPUTEXTUREFORMAT_ASTC8X8UNORMSRGB = 0x00000053;
const WGPUTextureFormat WGPUTEXTUREFORMAT_ASTC10X5UNORM = 0x00000054;
const WGPUTextureFormat WGPUTEXTUREFORMAT_ASTC10X5UNORMSRGB = 0x00000055;
const WGPUTextureFormat WGPUTEXTUREFORMAT_ASTC10X6UNORM = 0x00000056;
const WGPUTextureFormat WGPUTEXTUREFORMAT_ASTC10X6UNORMSRGB = 0x00000057;
const WGPUTextureFormat WGPUTEXTUREFORMAT_ASTC10X8UNORM = 0x00000058;
const WGPUTextureFormat WGPUTEXTUREFORMAT_ASTC10X8UNORMSRGB = 0x00000059;
const WGPUTextureFormat WGPUTEXTUREFORMAT_ASTC10X10UNORM = 0x0000005A;
const WGPUTextureFormat WGPUTEXTUREFORMAT_ASTC10X10UNORMSRGB = 0x0000005B;
const WGPUTextureFormat WGPUTEXTUREFORMAT_ASTC12X10UNORM = 0x0000005C;
const WGPUTextureFormat WGPUTEXTUREFORMAT_ASTC12X10UNORMSRGB = 0x0000005D;
const WGPUTextureFormat WGPUTEXTUREFORMAT_ASTC12X12UNORM = 0x0000005E;
const WGPUTextureFormat WGPUTEXTUREFORMAT_ASTC12X12UNORMSRGB = 0x0000005F;
const WGPUTextureFormat WGPUTEXTUREFORMAT_FORCE32 = 0x7FFFFFFF;

def WGPUTextureSampleType=uint;
const WGPUTextureSampleType WGPUTEXTURESAMPLETYPE_UNDEFINED = 0x00000000;
const WGPUTextureSampleType WGPUTEXTURESAMPLETYPE_FLOAT = 0x00000001;
const WGPUTextureSampleType WGPUTEXTURESAMPLETYPE_UNFILTERABLEFLOAT = 0x00000002;
const WGPUTextureSampleType WGPUTEXTURESAMPLETYPE_DEPTH = 0x00000003;
const WGPUTextureSampleType WGPUTEXTURESAMPLETYPE_SINT = 0x00000004;
const WGPUTextureSampleType WGPUTEXTURESAMPLETYPE_UINT = 0x00000005;
const WGPUTextureSampleType WGPUTEXTURESAMPLETYPE_FORCE32 = 0x7FFFFFFF;

def WGPUTextureViewDimension=uint;
const WGPUTextureViewDimension WGPUTEXTUREVIEWDIMENSION_UNDEFINED = 0x00000000;
const WGPUTextureViewDimension WGPUTEXTUREVIEWDIMENSION_1D = 0x00000001;
const WGPUTextureViewDimension WGPUTEXTUREVIEWDIMENSION_2D = 0x00000002;
const WGPUTextureViewDimension WGPUTEXTUREVIEWDIMENSION_2DARRAY = 0x00000003;
const WGPUTextureViewDimension WGPUTEXTUREVIEWDIMENSION_CUBE = 0x00000004;
const WGPUTextureViewDimension WGPUTEXTUREVIEWDIMENSION_CUBEARRAY = 0x00000005;
const WGPUTextureViewDimension WGPUTEXTUREVIEWDIMENSION_3D = 0x00000006;
const WGPUTextureViewDimension WGPUTEXTUREVIEWDIMENSION_FORCE32 = 0x7FFFFFFF;

def WGPUVertexFormat=uint;
const WGPUVertexFormat WGPUVERTEXFORMAT_UNDEFINED = 0x00000000;
const WGPUVertexFormat WGPUVERTEXFORMAT_UINT8X2 = 0x00000001;
const WGPUVertexFormat WGPUVERTEXFORMAT_UINT8X4 = 0x00000002;
const WGPUVertexFormat WGPUVERTEXFORMAT_SINT8X2 = 0x00000003;
const WGPUVertexFormat WGPUVERTEXFORMAT_SINT8X4 = 0x00000004;
const WGPUVertexFormat WGPUVERTEXFORMAT_UNORM8X2 = 0x00000005;
const WGPUVertexFormat WGPUVERTEXFORMAT_UNORM8X4 = 0x00000006;
const WGPUVertexFormat WGPUVERTEXFORMAT_SNORM8X2 = 0x00000007;
const WGPUVertexFormat WGPUVERTEXFORMAT_SNORM8X4 = 0x00000008;
const WGPUVertexFormat WGPUVERTEXFORMAT_UINT16X2 = 0x00000009;
const WGPUVertexFormat WGPUVERTEXFORMAT_UINT16X4 = 0x0000000A;
const WGPUVertexFormat WGPUVERTEXFORMAT_SINT16X2 = 0x0000000B;
const WGPUVertexFormat WGPUVERTEXFORMAT_SINT16X4 = 0x0000000C;
const WGPUVertexFormat WGPUVERTEXFORMAT_UNORM16X2 = 0x0000000D;
const WGPUVertexFormat WGPUVERTEXFORMAT_UNORM16X4 = 0x0000000E;
const WGPUVertexFormat WGPUVERTEXFORMAT_SNORM16X2 = 0x0000000F;
const WGPUVertexFormat WGPUVERTEXFORMAT_SNORM16X4 = 0x00000010;
const WGPUVertexFormat WGPUVERTEXFORMAT_FLOAT16X2 = 0x00000011;
const WGPUVertexFormat WGPUVERTEXFORMAT_FLOAT16X4 = 0x00000012;
const WGPUVertexFormat WGPUVERTEXFORMAT_FLOAT32 = 0x00000013;
const WGPUVertexFormat WGPUVERTEXFORMAT_FLOAT32X2 = 0x00000014;
const WGPUVertexFormat WGPUVERTEXFORMAT_FLOAT32X3 = 0x00000015;
const WGPUVertexFormat WGPUVERTEXFORMAT_FLOAT32X4 = 0x00000016;
const WGPUVertexFormat WGPUVERTEXFORMAT_UINT32 = 0x00000017;
const WGPUVertexFormat WGPUVERTEXFORMAT_UINT32X2 = 0x00000018;
const WGPUVertexFormat WGPUVERTEXFORMAT_UINT32X3 = 0x00000019;
const WGPUVertexFormat WGPUVERTEXFORMAT_UINT32X4 = 0x0000001A;
const WGPUVertexFormat WGPUVERTEXFORMAT_SINT32 = 0x0000001B;
const WGPUVertexFormat WGPUVERTEXFORMAT_SINT32X2 = 0x0000001C;
const WGPUVertexFormat WGPUVERTEXFORMAT_SINT32X3 = 0x0000001D;
const WGPUVertexFormat WGPUVERTEXFORMAT_SINT32X4 = 0x0000001E;
const WGPUVertexFormat WGPUVERTEXFORMAT_FORCE32 = 0x7FFFFFFF;

def WGPUVertexStepMode=uint;
const WGPUVertexStepMode WGPUVERTEXSTEPMODE_VERTEX = 0x00000000;
const WGPUVertexStepMode WGPUVERTEXSTEPMODE_INSTANCE = 0x00000001;
const WGPUVertexStepMode WGPUVERTEXSTEPMODE_VERTEXBUFFERNOTUSED = 0x00000002;
const WGPUVertexStepMode WGPUVERTEXSTEPMODE_FORCE32 = 0x7FFFFFFF;

def WGPUBufferUsage=uint;
const WGPUBufferUsage WGPUBUFFERUSAGE_NONE = 0x00000000;
const WGPUBufferUsage WGPUBUFFERUSAGE_MAPREAD = 0x00000001;
const WGPUBufferUsage WGPUBUFFERUSAGE_MAPWRITE = 0x00000002;
const WGPUBufferUsage WGPUBUFFERUSAGE_COPYSRC = 0x00000004;
const WGPUBufferUsage WGPUBUFFERUSAGE_COPYDST = 0x00000008;
const WGPUBufferUsage WGPUBUFFERUSAGE_INDEX = 0x00000010;
const WGPUBufferUsage WGPUBUFFERUSAGE_VERTEX = 0x00000020;
const WGPUBufferUsage WGPUBUFFERUSAGE_UNIFORM = 0x00000040;
const WGPUBufferUsage WGPUBUFFERUSAGE_STORAGE = 0x00000080;
const WGPUBufferUsage WGPUBUFFERUSAGE_INDIRECT = 0x00000100;
const WGPUBufferUsage WGPUBUFFERUSAGE_QUERYRESOLVE = 0x00000200;
const WGPUBufferUsage WGPUBUFFERUSAGE_FORCE32 = 0x7FFFFFFF;
def WGPUBufferUsageFlags=WGPUFlags;

def WGPUColorWriteMask=uint;
const WGPUColorWriteMask WGPUCOLORWRITEMASK_NONE = 0x00000000;
const WGPUColorWriteMask WGPUCOLORWRITEMASK_RED = 0x00000001;
const WGPUColorWriteMask WGPUCOLORWRITEMASK_GREEN = 0x00000002;
const WGPUColorWriteMask WGPUCOLORWRITEMASK_BLUE = 0x00000004;
const WGPUColorWriteMask WGPUCOLORWRITEMASK_ALPHA = 0x00000008;
const WGPUColorWriteMask WGPUCOLORWRITEMASK_ALL = 0x0000000F;
const WGPUColorWriteMask WGPUCOLORWRITEMASK_FORCE32 = 0x7FFFFFFF;
def WGPUColorWriteMaskFlags=WGPUFlags;

def WGPUMapMode=uint;
const WGPUMapMode WGPUMAPMODE_NONE = 0x00000000;
const WGPUMapMode WGPUMAPMODE_READ = 0x00000001;
const WGPUMapMode WGPUMAPMODE_WRITE = 0x00000002;
const WGPUMapMode WGPUMAPMODE_FORCE32 = 0x7FFFFFFF;
def WGPUMapModeFlags=WGPUFlags;

def WGPUShaderStage=uint;
const WGPUShaderStage WGPUSHADERSTAGE_NONE = 0x00000000;
const WGPUShaderStage WGPUSHADERSTAGE_VERTEX = 0x00000001;
const WGPUShaderStage WGPUSHADERSTAGE_FRAGMENT = 0x00000002;
const WGPUShaderStage WGPUSHADERSTAGE_COMPUTE = 0x00000004;
const WGPUShaderStage WGPUSHADERSTAGE_FORCE32 = 0x7FFFFFFF;
def WGPUShaderStageFlags=WGPUFlags;

def WGPUTextureUsage=uint;
const WGPUTextureUsage WGPUTEXTUREUSAGE_NONE = 0x00000000;
const WGPUTextureUsage WGPUTEXTUREUSAGE_COPYSRC = 0x00000001;
const WGPUTextureUsage WGPUTEXTUREUSAGE_COPYDST = 0x00000002;
const WGPUTextureUsage WGPUTEXTUREUSAGE_TEXTUREBINDING = 0x00000004;
const WGPUTextureUsage WGPUTEXTUREUSAGE_STORAGEBINDING = 0x00000008;
const WGPUTextureUsage WGPUTEXTUREUSAGE_RENDERATTACHMENT = 0x00000010;
const WGPUTextureUsage WGPUTEXTUREUSAGE_FORCE32 = 0x7FFFFFFF;
def WGPUTextureUsageFlags=WGPUFlags;



def WGPUBufferMapCallback=fn void(WGPUBufferMapAsyncStatus status, void* userdata);
def WGPUCompilationInfoCallback=fn void(WGPUCompilationInfoRequestStatus status, WGPUCompilationInfo* compilationInfo, void* userdata);
def WGPUCreateComputePipelineAsyncCallback=fn void(WGPUCreatePipelineAsyncStatus status, WGPUComputePipeline pipeline, char* message, void* userdata);
def WGPUCreateRenderPipelineAsyncCallback=fn void(WGPUCreatePipelineAsyncStatus status, WGPURenderPipeline pipeline, char* message, void* userdata);
def WGPUDeviceLostCallback=fn void(WGPUDeviceLostReason reason, char* message, void* userdata);
def WGPUErrorCallback=fn void(WGPUErrorType type, char* message, void* userdata);
def WGPUProc=fn void();
def WGPUQueueWorkDoneCallback=fn void(WGPUQueueWorkDoneStatus status, void* userdata);
def WGPURequestAdapterCallback=fn void(WGPURequestAdapterStatus status, WGPUAdapter adapter, char* message, void* userdata);
def WGPURequestDeviceCallback=fn void(WGPURequestDeviceStatus status, WGPUDevice device, char* message, void* userdata);



struct WGPUChainedStruct {
    WGPUChainedStruct* next;
    WGPUSType sType;
}

struct WGPUChainedStructOut {
    WGPUChainedStructOut* next;
    WGPUSType sType;
}

struct WGPUAdapterProperties {
    WGPUChainedStructOut* nextInChain;
    uint vendorID;
    char* vendorName;
    char* architecture;
    uint deviceID;
    char* name;
    char* driverDescription;
    WGPUAdapterType adapterType;
    WGPUBackendType backendType;
}

struct WGPUBindGroupEntry {
    WGPUChainedStruct* nextInChain;
    uint binding;
    WGPUBuffer buffer;
    ulong offset;
    ulong size;
    WGPUSampler sampler;
    WGPUTextureView textureView;
}

struct WGPUBlendComponent {
    WGPUBlendOperation operation;
    WGPUBlendFactor srcFactor;
    WGPUBlendFactor dstFactor;
}

struct WGPUBufferBindingLayout {
    WGPUChainedStruct* nextInChain;
    WGPUBufferBindingType type;
    WGPUBool hasDynamicOffset;
    ulong minBindingSize;
}

struct WGPUBufferDescriptor {
    WGPUChainedStruct* nextInChain;
    char* label;
    WGPUBufferUsageFlags usage;
    ulong size;
    WGPUBool mappedAtCreation;
}

struct WGPUColor {
    double r;
    double g;
    double b;
    double a;
}

struct WGPUCommandBufferDescriptor {
    WGPUChainedStruct* nextInChain;
    char* label;
}

struct WGPUCommandEncoderDescriptor {
    WGPUChainedStruct* nextInChain;
    char* label;
}

struct WGPUCompilationMessage {
    WGPUChainedStruct* nextInChain;
    char* message;
    WGPUCompilationMessageType type;
    ulong lineNum;
    ulong linePos;
    ulong offset;
    ulong length;
    ulong utf16LinePos;
    ulong utf16Offset;
    ulong utf16Length;
}

struct WGPUComputePassTimestampWrites {
    WGPUQuerySet querySet;
    uint beginningOfPassWriteIndex;
    uint endOfPassWriteIndex;
}

struct WGPUConstantEntry {
    WGPUChainedStruct* nextInChain;
    char* key;
    double value;
}

struct WGPUExtent3D {
    uint width;
    uint height;
    uint depthOrArrayLayers;
}

struct WGPUInstanceDescriptor {
    WGPUChainedStruct* nextInChain;
}

struct WGPULimits {
    uint maxTextureDimension1D;
    uint maxTextureDimension2D;
    uint maxTextureDimension3D;
    uint maxTextureArrayLayers;
    uint maxBindGroups;
    uint maxBindGroupsPlusVertexBuffers;
    uint maxBindingsPerBindGroup;
    uint maxDynamicUniformBuffersPerPipelineLayout;
    uint maxDynamicStorageBuffersPerPipelineLayout;
    uint maxSampledTexturesPerShaderStage;
    uint maxSamplersPerShaderStage;
    uint maxStorageBuffersPerShaderStage;
    uint maxStorageTexturesPerShaderStage;
    uint maxUniformBuffersPerShaderStage;
    ulong maxUniformBufferBindingSize;
    ulong maxStorageBufferBindingSize;
    uint minUniformBufferOffsetAlignment;
    uint minStorageBufferOffsetAlignment;
    uint maxVertexBuffers;
    ulong maxBufferSize;
    uint maxVertexAttributes;
    uint maxVertexBufferArrayStride;
    uint maxInterStageShaderComponents;
    uint maxInterStageShaderVariables;
    uint maxColorAttachments;
    uint maxColorAttachmentBytesPerSample;
    uint maxComputeWorkgroupStorageSize;
    uint maxComputeInvocationsPerWorkgroup;
    uint maxComputeWorkgroupSizeX;
    uint maxComputeWorkgroupSizeY;
    uint maxComputeWorkgroupSizeZ;
    uint maxComputeWorkgroupsPerDimension;
}

struct WGPUMultisampleState {
    WGPUChainedStruct* nextInChain;
    uint count;
    uint mask;
    WGPUBool alphaToCoverageEnabled;
}

struct WGPUOrigin3D {
    uint x;
    uint y;
    uint z;
}

struct WGPUPipelineLayoutDescriptor {
    WGPUChainedStruct* nextInChain;
    char* label;
    usz bindGroupLayoutCount;
    WGPUBindGroupLayout* bindGroupLayouts;
}

// Can be chained in WGPUPrimitiveState
struct WGPUPrimitiveDepthClipControl {
    WGPUChainedStruct chain;
    WGPUBool unclippedDepth;
}

struct WGPUPrimitiveState {
    WGPUChainedStruct* nextInChain;
    WGPUPrimitiveTopology topology;
    WGPUIndexFormat stripIndexFormat;
    WGPUFrontFace frontFace;
    WGPUCullMode cullMode;
}

struct WGPUQuerySetDescriptor {
    WGPUChainedStruct* nextInChain;
    char* label;
    WGPUQueryType type;
    uint count;
}

struct WGPUQueueDescriptor {
    WGPUChainedStruct* nextInChain;
    char* label;
}

struct WGPURenderBundleDescriptor {
    WGPUChainedStruct* nextInChain;
    char* label;
}

struct WGPURenderBundleEncoderDescriptor {
    WGPUChainedStruct* nextInChain;
    char* label;
    usz colorFormatCount;
    WGPUTextureFormat* colorFormats;
    WGPUTextureFormat depthStencilFormat;
    uint sampleCount;
    WGPUBool depthReadOnly;
    WGPUBool stencilReadOnly;
}

struct WGPURenderPassDepthStencilAttachment {
    WGPUTextureView view;
    WGPULoadOp depthLoadOp;
    WGPUStoreOp depthStoreOp;
    float depthClearValue;
    WGPUBool depthReadOnly;
    WGPULoadOp stencilLoadOp;
    WGPUStoreOp stencilStoreOp;
    uint stencilClearValue;
    WGPUBool stencilReadOnly;
}

// Can be chained in WGPURenderPassDescriptor
struct WGPURenderPassDescriptorMaxDrawCount {
    WGPUChainedStruct chain;
    ulong maxDrawCount;
}

struct WGPURenderPassTimestampWrites {
    WGPUQuerySet querySet;
    uint beginningOfPassWriteIndex;
    uint endOfPassWriteIndex;
}

struct WGPURequestAdapterOptions {
    WGPUChainedStruct* nextInChain;
    WGPUSurface compatibleSurface;
    WGPUPowerPreference powerPreference;
    WGPUBackendType backendType;
    WGPUBool forceFallbackAdapter;
}

struct WGPUSamplerBindingLayout {
    WGPUChainedStruct* nextInChain;
    WGPUSamplerBindingType type;
}

struct WGPUSamplerDescriptor {
    WGPUChainedStruct* nextInChain;
    char* label;
    WGPUAddressMode addressModeU;
    WGPUAddressMode addressModeV;
    WGPUAddressMode addressModeW;
    WGPUFilterMode magFilter;
    WGPUFilterMode minFilter;
    WGPUMipmapFilterMode mipmapFilter;
    float lodMinClamp;
    float lodMaxClamp;
    WGPUCompareFunction compare;
    ushort maxAnisotropy;
}

struct WGPUShaderModuleCompilationHint {
    WGPUChainedStruct* nextInChain;
    char* entryPoint;
    WGPUPipelineLayout layout;
}

// Can be chained in WGPUShaderModuleDescriptor
struct WGPUShaderModuleSPIRVDescriptor {
    WGPUChainedStruct chain;
    uint codeSize;
    uint* code;
}

// Can be chained in WGPUShaderModuleDescriptor
struct WGPUShaderModuleWGSLDescriptor {
    WGPUChainedStruct chain;
    char* code;
}

struct WGPUStencilFaceState {
    WGPUCompareFunction compare;
    WGPUStencilOperation failOp;
    WGPUStencilOperation depthFailOp;
    WGPUStencilOperation passOp;
}

struct WGPUStorageTextureBindingLayout {
    WGPUChainedStruct* nextInChain;
    WGPUStorageTextureAccess access;
    WGPUTextureFormat format;
    WGPUTextureViewDimension viewDimension;
}

struct WGPUSurfaceCapabilities {
    WGPUChainedStructOut* nextInChain;
    usz formatCount;
    WGPUTextureFormat* formats;
    usz presentModeCount;
    WGPUPresentMode* presentModes;
    usz alphaModeCount;
    WGPUCompositeAlphaMode* alphaModes;
}

struct WGPUSurfaceConfiguration {
    WGPUChainedStruct* nextInChain;
    WGPUDevice device;
    WGPUTextureFormat format;
    WGPUTextureUsageFlags usage;
    usz viewFormatCount;
    WGPUTextureFormat* viewFormats;
    WGPUCompositeAlphaMode alphaMode;
    uint width;
    uint height;
    WGPUPresentMode presentMode;
}

struct WGPUSurfaceDescriptor {
    WGPUChainedStruct* nextInChain;
    char* label;
}

// Can be chained in WGPUSurfaceDescriptor
struct WGPUSurfaceDescriptorFromAndroidNativeWindow {
    WGPUChainedStruct chain;
    void* window;
}

// Can be chained in WGPUSurfaceDescriptor
struct WGPUSurfaceDescriptorFromCanvasHTMLSelector {
    WGPUChainedStruct chain;
    char* selector;
}

// Can be chained in WGPUSurfaceDescriptor
struct WGPUSurfaceDescriptorFromMetalLayer {
    WGPUChainedStruct chain;
    void* layer;
}

// Can be chained in WGPUSurfaceDescriptor
struct WGPUSurfaceDescriptorFromWaylandSurface {
    WGPUChainedStruct chain;
    void* display;
    void* surface;
}

// Can be chained in WGPUSurfaceDescriptor
struct WGPUSurfaceDescriptorFromWindowsHWND {
    WGPUChainedStruct chain;
    void* hinstance;
    void* hwnd;
}

// Can be chained in WGPUSurfaceDescriptor
struct WGPUSurfaceDescriptorFromXcbWindow {
    WGPUChainedStruct chain;
    void* connection;
    uint window;
}

// Can be chained in WGPUSurfaceDescriptor
struct WGPUSurfaceDescriptorFromXlibWindow {
    WGPUChainedStruct chain;
    void* display;
    ulong window;
}

struct WGPUSurfaceTexture {
    WGPUTexture texture;
    WGPUBool suboptimal;
    WGPUSurfaceGetCurrentTextureStatus status;
}

struct WGPUTextureBindingLayout {
    WGPUChainedStruct* nextInChain;
    WGPUTextureSampleType sampleType;
    WGPUTextureViewDimension viewDimension;
    WGPUBool multisampled;
}

struct WGPUTextureDataLayout {
    WGPUChainedStruct* nextInChain;
    ulong offset;
    uint bytesPerRow;
    uint rowsPerImage;
}

struct WGPUTextureViewDescriptor {
    WGPUChainedStruct* nextInChain;
    char* label;
    WGPUTextureFormat format;
    WGPUTextureViewDimension dimension;
    uint baseMipLevel;
    uint mipLevelCount;
    uint baseArrayLayer;
    uint arrayLayerCount;
    WGPUTextureAspect aspect;
}

struct WGPUVertexAttribute {
    WGPUVertexFormat format;
    ulong offset;
    uint shaderLocation;
}

struct WGPUBindGroupDescriptor {
    WGPUChainedStruct* nextInChain;
    char* label;
    WGPUBindGroupLayout layout;
    usz entryCount;
    WGPUBindGroupEntry* entries;
}

struct WGPUBindGroupLayoutEntry {
    WGPUChainedStruct* nextInChain;
    uint binding;
    WGPUShaderStageFlags visibility;
    WGPUBufferBindingLayout buffer;
    WGPUSamplerBindingLayout sampler;
    WGPUTextureBindingLayout texture;
    WGPUStorageTextureBindingLayout storageTexture;
}

struct WGPUBlendState {
    WGPUBlendComponent color;
    WGPUBlendComponent alpha;
}

struct WGPUCompilationInfo {
    WGPUChainedStruct* nextInChain;
    usz messageCount;
    WGPUCompilationMessage* messages;
}

struct WGPUComputePassDescriptor {
    WGPUChainedStruct* nextInChain;
    char* label;
    WGPUComputePassTimestampWrites* timestampWrites;
}

struct WGPUDepthStencilState {
    WGPUChainedStruct* nextInChain;
    WGPUTextureFormat format;
    WGPUBool depthWriteEnabled;
    WGPUCompareFunction depthCompare;
    WGPUStencilFaceState stencilFront;
    WGPUStencilFaceState stencilBack;
    uint stencilReadMask;
    uint stencilWriteMask;
    int depthBias;
    float depthBiasSlopeScale;
    float depthBiasClamp;
}

struct WGPUImageCopyBuffer {
    WGPUChainedStruct* nextInChain;
    WGPUTextureDataLayout layout;
    WGPUBuffer buffer;
}

struct WGPUImageCopyTexture {
    WGPUChainedStruct* nextInChain;
    WGPUTexture texture;
    uint mipLevel;
    WGPUOrigin3D origin;
    WGPUTextureAspect aspect;
}

struct WGPUProgrammableStageDescriptor {
    WGPUChainedStruct* nextInChain;
    WGPUShaderModule module_;
    char* entryPoint;
    usz constantCount;
    WGPUConstantEntry* constants;
}

struct WGPURenderPassColorAttachment {
    WGPUChainedStruct* nextInChain;
    WGPUTextureView view;
    WGPUTextureView resolveTarget;
    WGPULoadOp loadOp;
    WGPUStoreOp storeOp;
    WGPUColor clearValue;
}

struct WGPURequiredLimits {
    WGPUChainedStruct* nextInChain;
    WGPULimits limits;
}

struct WGPUShaderModuleDescriptor {
    WGPUChainedStruct* nextInChain;
    char* label;
    usz hintCount;
    WGPUShaderModuleCompilationHint* hints;
}

struct WGPUSupportedLimits {
    WGPUChainedStructOut* nextInChain;
    WGPULimits limits;
}

struct WGPUTextureDescriptor {
    WGPUChainedStruct* nextInChain;
    char* label;
    WGPUTextureUsageFlags usage;
    WGPUTextureDimension dimension;
    WGPUExtent3D size;
    WGPUTextureFormat format;
    uint mipLevelCount;
    uint sampleCount;
    usz viewFormatCount;
    WGPUTextureFormat* viewFormats;
}

struct WGPUVertexBufferLayout {
    ulong arrayStride;
    WGPUVertexStepMode stepMode;
    usz attributeCount;
    WGPUVertexAttribute* attributes;
}

struct WGPUBindGroupLayoutDescriptor {
    WGPUChainedStruct* nextInChain;
    char* label;
    usz entryCount;
    WGPUBindGroupLayoutEntry* entries;
}

struct WGPUColorTargetState {
    WGPUChainedStruct* nextInChain;
    WGPUTextureFormat format;
    WGPUBlendState* blend;
    WGPUColorWriteMaskFlags writeMask;
}

struct WGPUComputePipelineDescriptor {
    WGPUChainedStruct* nextInChain;
    char* label;
    WGPUPipelineLayout layout;
    WGPUProgrammableStageDescriptor compute;
}

struct WGPUDeviceDescriptor {
    WGPUChainedStruct* nextInChain;
    char* label;
    usz requiredFeatureCount;
    WGPUFeatureName* requiredFeatures;
    WGPURequiredLimits* requiredLimits;
    WGPUQueueDescriptor defaultQueue;
    WGPUDeviceLostCallback deviceLostCallback;
    void* deviceLostUserdata;
}

struct WGPURenderPassDescriptor {
    WGPUChainedStruct* nextInChain;
    char* label;
    usz colorAttachmentCount;
    WGPURenderPassColorAttachment* colorAttachments;
    WGPURenderPassDepthStencilAttachment* depthStencilAttachment;
    WGPUQuerySet occlusionQuerySet;
    WGPURenderPassTimestampWrites* timestampWrites;
}

struct WGPUVertexState {
    WGPUChainedStruct* nextInChain;
    WGPUShaderModule module_;
    char* entryPoint;
    usz constantCount;
    WGPUConstantEntry* constants;
    usz bufferCount;
    WGPUVertexBufferLayout* buffers;
}

struct WGPUFragmentState {
    WGPUChainedStruct* nextInChain;
    WGPUShaderModule module_;
    char* entryPoint;
    usz constantCount;
    WGPUConstantEntry* constants;
    usz targetCount;
    WGPUColorTargetState* targets;
}

struct WGPURenderPipelineDescriptor {
    WGPUChainedStruct* nextInChain;
    char* label;
    WGPUPipelineLayout layout;
    WGPUVertexState vertex;
    WGPUPrimitiveState primitive;
    WGPUDepthStencilState* depthStencil;
    WGPUMultisampleState multisample;
    WGPUFragmentState* fragment;
}



def WGPUProcCreateInstance=fn WGPUInstance(WGPUInstanceDescriptor* descriptor);
def WGPUProcGetProcAddress=fn WGPUProc(WGPUDevice device, char* procName);

// Procs of Adapter
def WGPUProcAdapterEnumerateFeatures=fn usz(WGPUAdapter adapter, WGPUFeatureName* features);
def WGPUProcAdapterGetLimits=fn WGPUBool(WGPUAdapter adapter, WGPUSupportedLimits* limits);
def WGPUProcAdapterGetProperties=fn void(WGPUAdapter adapter, WGPUAdapterProperties* properties);
def WGPUProcAdapterHasFeature=fn WGPUBool(WGPUAdapter adapter, WGPUFeatureName feature);
def WGPUProcAdapterRequestDevice=fn void(WGPUAdapter adapter, WGPUDeviceDescriptor* descriptor, WGPURequestDeviceCallback callback, void* userdata);
def WGPUProcAdapterReference=fn void(WGPUAdapter adapter);
def WGPUProcAdapterRelease=fn void(WGPUAdapter adapter);

// Procs of BindGroup
def WGPUProcBindGroupSetLabel=fn void(WGPUBindGroup bindGroup, char* label);
def WGPUProcBindGroupReference=fn void(WGPUBindGroup bindGroup);
def WGPUProcBindGroupRelease=fn void(WGPUBindGroup bindGroup);

// Procs of BindGroupLayout
def WGPUProcBindGroupLayoutSetLabel=fn void(WGPUBindGroupLayout bindGroupLayout, char* label);
def WGPUProcBindGroupLayoutReference=fn void(WGPUBindGroupLayout bindGroupLayout);
def WGPUProcBindGroupLayoutRelease=fn void(WGPUBindGroupLayout bindGroupLayout);

// Procs of Buffer
def WGPUProcBufferDestroy=fn void(WGPUBuffer buffer);
def WGPUProcBufferGetConstMappedRange=fn void*(WGPUBuffer buffer, usz offset, usz size);
def WGPUProcBufferGetMapState=fn WGPUBufferMapState(WGPUBuffer buffer);
def WGPUProcBufferGetMappedRange=fn void*(WGPUBuffer buffer, usz offset, usz size);
def WGPUProcBufferGetSize=fn ulong(WGPUBuffer buffer);
def WGPUProcBufferGetUsage=fn WGPUBufferUsageFlags(WGPUBuffer buffer);
def WGPUProcBufferMapAsync=fn void(WGPUBuffer buffer, WGPUMapModeFlags mode, usz offset, usz size, WGPUBufferMapCallback callback, void* userdata);
def WGPUProcBufferSetLabel=fn void(WGPUBuffer buffer, char* label);
def WGPUProcBufferUnmap=fn void(WGPUBuffer buffer);
def WGPUProcBufferReference=fn void(WGPUBuffer buffer);
def WGPUProcBufferRelease=fn void(WGPUBuffer buffer);

// Procs of CommandBuffer
def WGPUProcCommandBufferSetLabel=fn void(WGPUCommandBuffer commandBuffer, char* label);
def WGPUProcCommandBufferReference=fn void(WGPUCommandBuffer commandBuffer);
def WGPUProcCommandBufferRelease=fn void(WGPUCommandBuffer commandBuffer);

// Procs of CommandEncoder
def WGPUProcCommandEncoderBeginComputePass=fn WGPUComputePassEncoder(WGPUCommandEncoder commandEncoder, WGPUComputePassDescriptor* descriptor);
def WGPUProcCommandEncoderBeginRenderPass=fn WGPURenderPassEncoder(WGPUCommandEncoder commandEncoder, WGPURenderPassDescriptor* descriptor);
def WGPUProcCommandEncoderClearBuffer=fn void(WGPUCommandEncoder commandEncoder, WGPUBuffer buffer, ulong offset, ulong size);
def WGPUProcCommandEncoderCopyBufferToBuffer=fn void(WGPUCommandEncoder commandEncoder, WGPUBuffer source, ulong sourceOffset, WGPUBuffer destination, ulong destinationOffset, ulong size);
def WGPUProcCommandEncoderCopyBufferToTexture=fn void(WGPUCommandEncoder commandEncoder, WGPUImageCopyBuffer* source, WGPUImageCopyTexture* destination, WGPUExtent3D* copySize);
def WGPUProcCommandEncoderCopyTextureToBuffer=fn void(WGPUCommandEncoder commandEncoder, WGPUImageCopyTexture* source, WGPUImageCopyBuffer* destination, WGPUExtent3D* copySize);
def WGPUProcCommandEncoderCopyTextureToTexture=fn void(WGPUCommandEncoder commandEncoder, WGPUImageCopyTexture* source, WGPUImageCopyTexture* destination, WGPUExtent3D* copySize);
def WGPUProcCommandEncoderFinish=fn WGPUCommandBuffer(WGPUCommandEncoder commandEncoder, WGPUCommandBufferDescriptor* descriptor);
def WGPUProcCommandEncoderInsertDebugMarker=fn void(WGPUCommandEncoder commandEncoder, char* markerLabel);
def WGPUProcCommandEncoderPopDebugGroup=fn void(WGPUCommandEncoder commandEncoder);
def WGPUProcCommandEncoderPushDebugGroup=fn void(WGPUCommandEncoder commandEncoder, char* groupLabel);
def WGPUProcCommandEncoderResolveQuerySet=fn void(WGPUCommandEncoder commandEncoder, WGPUQuerySet querySet, uint firstQuery, uint queryCount, WGPUBuffer destination, ulong destinationOffset);
def WGPUProcCommandEncoderSetLabel=fn void(WGPUCommandEncoder commandEncoder, char* label);
def WGPUProcCommandEncoderWriteTimestamp=fn void(WGPUCommandEncoder commandEncoder, WGPUQuerySet querySet, uint queryIndex);
def WGPUProcCommandEncoderReference=fn void(WGPUCommandEncoder commandEncoder);
def WGPUProcCommandEncoderRelease=fn void(WGPUCommandEncoder commandEncoder);

// Procs of ComputePassEncoder
def WGPUProcComputePassEncoderDispatchWorkgroups=fn void(WGPUComputePassEncoder computePassEncoder, uint workgroupCountX, uint workgroupCountY, uint workgroupCountZ);
def WGPUProcComputePassEncoderDispatchWorkgroupsIndirect=fn void(WGPUComputePassEncoder computePassEncoder, WGPUBuffer indirectBuffer, ulong indirectOffset);
def WGPUProcComputePassEncoderEnd=fn void(WGPUComputePassEncoder computePassEncoder);
def WGPUProcComputePassEncoderInsertDebugMarker=fn void(WGPUComputePassEncoder computePassEncoder, char* markerLabel);
def WGPUProcComputePassEncoderPopDebugGroup=fn void(WGPUComputePassEncoder computePassEncoder);
def WGPUProcComputePassEncoderPushDebugGroup=fn void(WGPUComputePassEncoder computePassEncoder, char* groupLabel);
def WGPUProcComputePassEncoderSetBindGroup=fn void(WGPUComputePassEncoder computePassEncoder, uint groupIndex, WGPUBindGroup group, usz dynamicOffsetCount, uint* dynamicOffsets);
def WGPUProcComputePassEncoderSetLabel=fn void(WGPUComputePassEncoder computePassEncoder, char* label);
def WGPUProcComputePassEncoderSetPipeline=fn void(WGPUComputePassEncoder computePassEncoder, WGPUComputePipeline pipeline);
def WGPUProcComputePassEncoderReference=fn void(WGPUComputePassEncoder computePassEncoder);
def WGPUProcComputePassEncoderRelease=fn void(WGPUComputePassEncoder computePassEncoder);

// Procs of ComputePipeline
def WGPUProcComputePipelineGetBindGroupLayout=fn WGPUBindGroupLayout(WGPUComputePipeline computePipeline, uint groupIndex);
def WGPUProcComputePipelineSetLabel=fn void(WGPUComputePipeline computePipeline, char* label);
def WGPUProcComputePipelineReference=fn void(WGPUComputePipeline computePipeline);
def WGPUProcComputePipelineRelease=fn void(WGPUComputePipeline computePipeline);

// Procs of Device
def WGPUProcDeviceCreateBindGroup=fn WGPUBindGroup(WGPUDevice device, WGPUBindGroupDescriptor* descriptor);
def WGPUProcDeviceCreateBindGroupLayout=fn WGPUBindGroupLayout(WGPUDevice device, WGPUBindGroupLayoutDescriptor* descriptor);
def WGPUProcDeviceCreateBuffer=fn WGPUBuffer(WGPUDevice device, WGPUBufferDescriptor* descriptor);
def WGPUProcDeviceCreateCommandEncoder=fn WGPUCommandEncoder(WGPUDevice device, WGPUCommandEncoderDescriptor* descriptor);
def WGPUProcDeviceCreateComputePipeline=fn WGPUComputePipeline(WGPUDevice device, WGPUComputePipelineDescriptor* descriptor);
def WGPUProcDeviceCreateComputePipelineAsync=fn void(WGPUDevice device, WGPUComputePipelineDescriptor* descriptor, WGPUCreateComputePipelineAsyncCallback callback, void* userdata);
def WGPUProcDeviceCreatePipelineLayout=fn WGPUPipelineLayout(WGPUDevice device, WGPUPipelineLayoutDescriptor* descriptor);
def WGPUProcDeviceCreateQuerySet=fn WGPUQuerySet(WGPUDevice device, WGPUQuerySetDescriptor* descriptor);
def WGPUProcDeviceCreateRenderBundleEncoder=fn WGPURenderBundleEncoder(WGPUDevice device, WGPURenderBundleEncoderDescriptor* descriptor);
def WGPUProcDeviceCreateRenderPipeline=fn WGPURenderPipeline(WGPUDevice device, WGPURenderPipelineDescriptor* descriptor);
def WGPUProcDeviceCreateRenderPipelineAsync=fn void(WGPUDevice device, WGPURenderPipelineDescriptor* descriptor, WGPUCreateRenderPipelineAsyncCallback callback, void* userdata);
def WGPUProcDeviceCreateSampler=fn WGPUSampler(WGPUDevice device, WGPUSamplerDescriptor* descriptor);
def WGPUProcDeviceCreateShaderModule=fn WGPUShaderModule(WGPUDevice device, WGPUShaderModuleDescriptor* descriptor);
def WGPUProcDeviceCreateTexture=fn WGPUTexture(WGPUDevice device, WGPUTextureDescriptor* descriptor);
def WGPUProcDeviceDestroy=fn void(WGPUDevice device);
def WGPUProcDeviceEnumerateFeatures=fn usz(WGPUDevice device, WGPUFeatureName* features);
def WGPUProcDeviceGetLimits=fn WGPUBool(WGPUDevice device, WGPUSupportedLimits* limits);
def WGPUProcDeviceGetQueue=fn WGPUQueue(WGPUDevice device);
def WGPUProcDeviceHasFeature=fn WGPUBool(WGPUDevice device, WGPUFeatureName feature);
def WGPUProcDevicePopErrorScope=fn void(WGPUDevice device, WGPUErrorCallback callback, void* userdata);
def WGPUProcDevicePushErrorScope=fn void(WGPUDevice device, WGPUErrorFilter filter);
def WGPUProcDeviceSetLabel=fn void(WGPUDevice device, char* label);
def WGPUProcDeviceSetUncapturedErrorCallback=fn void(WGPUDevice device, WGPUErrorCallback callback, void* userdata);
def WGPUProcDeviceReference=fn void(WGPUDevice device);
def WGPUProcDeviceRelease=fn void(WGPUDevice device);

// Procs of Instance
def WGPUProcInstanceCreateSurface=fn WGPUSurface(WGPUInstance instance, WGPUSurfaceDescriptor* descriptor);
def WGPUProcInstanceProcessEvents=fn void(WGPUInstance instance);
def WGPUProcInstanceRequestAdapter=fn void(WGPUInstance instance, WGPURequestAdapterOptions* options, WGPURequestAdapterCallback callback, void* userdata);
def WGPUProcInstanceReference=fn void(WGPUInstance instance);
def WGPUProcInstanceRelease=fn void(WGPUInstance instance);

// Procs of PipelineLayout
def WGPUProcPipelineLayoutSetLabel=fn void(WGPUPipelineLayout pipelineLayout, char* label);
def WGPUProcPipelineLayoutReference=fn void(WGPUPipelineLayout pipelineLayout);
def WGPUProcPipelineLayoutRelease=fn void(WGPUPipelineLayout pipelineLayout);

// Procs of QuerySet
def WGPUProcQuerySetDestroy=fn void(WGPUQuerySet querySet);
def WGPUProcQuerySetGetCount=fn uint(WGPUQuerySet querySet);
def WGPUProcQuerySetGetType=fn WGPUQueryType(WGPUQuerySet querySet);
def WGPUProcQuerySetSetLabel=fn void(WGPUQuerySet querySet, char* label);
def WGPUProcQuerySetReference=fn void(WGPUQuerySet querySet);
def WGPUProcQuerySetRelease=fn void(WGPUQuerySet querySet);

// Procs of Queue
def WGPUProcQueueOnSubmittedWorkDone=fn void(WGPUQueue queue, WGPUQueueWorkDoneCallback callback, void* userdata);
def WGPUProcQueueSetLabel=fn void(WGPUQueue queue, char* label);
def WGPUProcQueueSubmit=fn void(WGPUQueue queue, usz commandCount, WGPUCommandBuffer* commands);
def WGPUProcQueueWriteBuffer=fn void(WGPUQueue queue, WGPUBuffer buffer, ulong bufferOffset, void* data, usz size);
def WGPUProcQueueWriteTexture=fn void(WGPUQueue queue, WGPUImageCopyTexture* destination, void* data, usz dataSize, WGPUTextureDataLayout* dataLayout, WGPUExtent3D* writeSize);
def WGPUProcQueueReference=fn void(WGPUQueue queue);
def WGPUProcQueueRelease=fn void(WGPUQueue queue);

// Procs of RenderBundle
def WGPUProcRenderBundleSetLabel=fn void(WGPURenderBundle renderBundle, char* label);
def WGPUProcRenderBundleReference=fn void(WGPURenderBundle renderBundle);
def WGPUProcRenderBundleRelease=fn void(WGPURenderBundle renderBundle);

// Procs of RenderBundleEncoder
def WGPUProcRenderBundleEncoderDraw=fn void(WGPURenderBundleEncoder renderBundleEncoder, uint vertexCount, uint instanceCount, uint firstVertex, uint firstInstance);
def WGPUProcRenderBundleEncoderDrawIndexed=fn void(WGPURenderBundleEncoder renderBundleEncoder, uint indexCount, uint instanceCount, uint firstIndex, int baseVertex, uint firstInstance);
def WGPUProcRenderBundleEncoderDrawIndexedIndirect=fn void(WGPURenderBundleEncoder renderBundleEncoder, WGPUBuffer indirectBuffer, ulong indirectOffset);
def WGPUProcRenderBundleEncoderDrawIndirect=fn void(WGPURenderBundleEncoder renderBundleEncoder, WGPUBuffer indirectBuffer, ulong indirectOffset);
def WGPUProcRenderBundleEncoderFinish=fn WGPURenderBundle(WGPURenderBundleEncoder renderBundleEncoder, WGPURenderBundleDescriptor* descriptor);
def WGPUProcRenderBundleEncoderInsertDebugMarker=fn void(WGPURenderBundleEncoder renderBundleEncoder, char* markerLabel);
def WGPUProcRenderBundleEncoderPopDebugGroup=fn void(WGPURenderBundleEncoder renderBundleEncoder);
def WGPUProcRenderBundleEncoderPushDebugGroup=fn void(WGPURenderBundleEncoder renderBundleEncoder, char* groupLabel);
def WGPUProcRenderBundleEncoderSetBindGroup=fn void(WGPURenderBundleEncoder renderBundleEncoder, uint groupIndex, WGPUBindGroup group, usz dynamicOffsetCount, uint* dynamicOffsets);
def WGPUProcRenderBundleEncoderSetIndexBuffer=fn void(WGPURenderBundleEncoder renderBundleEncoder, WGPUBuffer buffer, WGPUIndexFormat format, ulong offset, ulong size);
def WGPUProcRenderBundleEncoderSetLabel=fn void(WGPURenderBundleEncoder renderBundleEncoder, char* label);
def WGPUProcRenderBundleEncoderSetPipeline=fn void(WGPURenderBundleEncoder renderBundleEncoder, WGPURenderPipeline pipeline);
def WGPUProcRenderBundleEncoderSetVertexBuffer=fn void(WGPURenderBundleEncoder renderBundleEncoder, uint slot, WGPUBuffer buffer, ulong offset, ulong size);
def WGPUProcRenderBundleEncoderReference=fn void(WGPURenderBundleEncoder renderBundleEncoder);
def WGPUProcRenderBundleEncoderRelease=fn void(WGPURenderBundleEncoder renderBundleEncoder);

// Procs of RenderPassEncoder
def WGPUProcRenderPassEncoderBeginOcclusionQuery=fn void(WGPURenderPassEncoder renderPassEncoder, uint queryIndex);
def WGPUProcRenderPassEncoderDraw=fn void(WGPURenderPassEncoder renderPassEncoder, uint vertexCount, uint instanceCount, uint firstVertex, uint firstInstance);
def WGPUProcRenderPassEncoderDrawIndexed=fn void(WGPURenderPassEncoder renderPassEncoder, uint indexCount, uint instanceCount, uint firstIndex, int baseVertex, uint firstInstance);
def WGPUProcRenderPassEncoderDrawIndexedIndirect=fn void(WGPURenderPassEncoder renderPassEncoder, WGPUBuffer indirectBuffer, ulong indirectOffset);
def WGPUProcRenderPassEncoderDrawIndirect=fn void(WGPURenderPassEncoder renderPassEncoder, WGPUBuffer indirectBuffer, ulong indirectOffset);
def WGPUProcRenderPassEncoderEnd=fn void(WGPURenderPassEncoder renderPassEncoder);
def WGPUProcRenderPassEncoderEndOcclusionQuery=fn void(WGPURenderPassEncoder renderPassEncoder);
def WGPUProcRenderPassEncoderExecuteBundles=fn void(WGPURenderPassEncoder renderPassEncoder, usz bundleCount, WGPURenderBundle* bundles);
def WGPUProcRenderPassEncoderInsertDebugMarker=fn void(WGPURenderPassEncoder renderPassEncoder, char* markerLabel);
def WGPUProcRenderPassEncoderPopDebugGroup=fn void(WGPURenderPassEncoder renderPassEncoder);
def WGPUProcRenderPassEncoderPushDebugGroup=fn void(WGPURenderPassEncoder renderPassEncoder, char* groupLabel);
def WGPUProcRenderPassEncoderSetBindGroup=fn void(WGPURenderPassEncoder renderPassEncoder, uint groupIndex, WGPUBindGroup group, usz dynamicOffsetCount, uint* dynamicOffsets);
def WGPUProcRenderPassEncoderSetBlendConstant=fn void(WGPURenderPassEncoder renderPassEncoder, WGPUColor* color);
def WGPUProcRenderPassEncoderSetIndexBuffer=fn void(WGPURenderPassEncoder renderPassEncoder, WGPUBuffer buffer, WGPUIndexFormat format, ulong offset, ulong size);
def WGPUProcRenderPassEncoderSetLabel=fn void(WGPURenderPassEncoder renderPassEncoder, char* label);
def WGPUProcRenderPassEncoderSetPipeline=fn void(WGPURenderPassEncoder renderPassEncoder, WGPURenderPipeline pipeline);
def WGPUProcRenderPassEncoderSetScissorRect=fn void(WGPURenderPassEncoder renderPassEncoder, uint x, uint y, uint width, uint height);
def WGPUProcRenderPassEncoderSetStencilReference=fn void(WGPURenderPassEncoder renderPassEncoder, uint reference);
def WGPUProcRenderPassEncoderSetVertexBuffer=fn void(WGPURenderPassEncoder renderPassEncoder, uint slot, WGPUBuffer buffer, ulong offset, ulong size);
def WGPUProcRenderPassEncoderSetViewport=fn void(WGPURenderPassEncoder renderPassEncoder, float x, float y, float width, float height, float minDepth, float maxDepth);
def WGPUProcRenderPassEncoderReference=fn void(WGPURenderPassEncoder renderPassEncoder);
def WGPUProcRenderPassEncoderRelease=fn void(WGPURenderPassEncoder renderPassEncoder);

// Procs of RenderPipeline
def WGPUProcRenderPipelineGetBindGroupLayout=fn WGPUBindGroupLayout(WGPURenderPipeline renderPipeline, uint groupIndex);
def WGPUProcRenderPipelineSetLabel=fn void(WGPURenderPipeline renderPipeline, char* label);
def WGPUProcRenderPipelineReference=fn void(WGPURenderPipeline renderPipeline);
def WGPUProcRenderPipelineRelease=fn void(WGPURenderPipeline renderPipeline);

// Procs of Sampler
def WGPUProcSamplerSetLabel=fn void(WGPUSampler sampler, char* label);
def WGPUProcSamplerReference=fn void(WGPUSampler sampler);
def WGPUProcSamplerRelease=fn void(WGPUSampler sampler);

// Procs of ShaderModule
def WGPUProcShaderModuleGetCompilationInfo=fn void(WGPUShaderModule shaderModule, WGPUCompilationInfoCallback callback, void* userdata);
def WGPUProcShaderModuleSetLabel=fn void(WGPUShaderModule shaderModule, char* label);
def WGPUProcShaderModuleReference=fn void(WGPUShaderModule shaderModule);
def WGPUProcShaderModuleRelease=fn void(WGPUShaderModule shaderModule);

// Procs of Surface
def WGPUProcSurfaceConfigure=fn void(WGPUSurface surface, WGPUSurfaceConfiguration* config);
def WGPUProcSurfaceGetCapabilities=fn void(WGPUSurface surface, WGPUAdapter adapter, WGPUSurfaceCapabilities* capabilities);
def WGPUProcSurfaceGetCurrentTexture=fn void(WGPUSurface surface, WGPUSurfaceTexture* surfaceTexture);
def WGPUProcSurfaceGetPreferredFormat=fn WGPUTextureFormat(WGPUSurface surface, WGPUAdapter adapter);
def WGPUProcSurfacePresent=fn void(WGPUSurface surface);
def WGPUProcSurfaceUnconfigure=fn void(WGPUSurface surface);
def WGPUProcSurfaceReference=fn void(WGPUSurface surface);
def WGPUProcSurfaceRelease=fn void(WGPUSurface surface);

// Procs of SurfaceCapabilities
def WGPUProcSurfaceCapabilitiesFreeMembers=fn void(WGPUSurfaceCapabilities capabilities);

// Procs of Texture
def WGPUProcTextureCreateView=fn WGPUTextureView(WGPUTexture texture, WGPUTextureViewDescriptor* descriptor);
def WGPUProcTextureDestroy=fn void(WGPUTexture texture);
def WGPUProcTextureGetDepthOrArrayLayers=fn uint(WGPUTexture texture);
def WGPUProcTextureGetDimension=fn WGPUTextureDimension(WGPUTexture texture);
def WGPUProcTextureGetFormat=fn WGPUTextureFormat(WGPUTexture texture);
def WGPUProcTextureGetHeight=fn uint(WGPUTexture texture);
def WGPUProcTextureGetMipLevelCount=fn uint(WGPUTexture texture);
def WGPUProcTextureGetSampleCount=fn uint(WGPUTexture texture);
def WGPUProcTextureGetUsage=fn WGPUTextureUsageFlags(WGPUTexture texture);
def WGPUProcTextureGetWidth=fn uint(WGPUTexture texture);
def WGPUProcTextureSetLabel=fn void(WGPUTexture texture, char* label);
def WGPUProcTextureReference=fn void(WGPUTexture texture);
def WGPUProcTextureRelease=fn void(WGPUTexture texture);

// Procs of TextureView
def WGPUProcTextureViewSetLabel=fn void(WGPUTextureView textureView, char* label);
def WGPUProcTextureViewReference=fn void(WGPUTextureView textureView);
def WGPUProcTextureViewRelease=fn void(WGPUTextureView textureView);



extern fn WGPUInstance wgpuCreateInstance( WGPUInstanceDescriptor* descriptor) @extern("wgpuCreateInstance");
extern fn WGPUProc wgpuGetProcAddress(WGPUDevice device, char* procName) @extern("wgpuGetProcAddress");

// Methods of Adapter
extern fn usz wgpuAdapterEnumerateFeatures(WGPUAdapter adapter, WGPUFeatureName* features) @extern("wgpuAdapterEnumerateFeatures");
extern fn WGPUBool wgpuAdapterGetLimits(WGPUAdapter adapter, WGPUSupportedLimits* limits) @extern("wgpuAdapterGetLimits");
extern fn void wgpuAdapterGetProperties(WGPUAdapter adapter, WGPUAdapterProperties* properties) @extern("wgpuAdapterGetProperties");
extern fn WGPUBool wgpuAdapterHasFeature(WGPUAdapter adapter, WGPUFeatureName feature) @extern("wgpuAdapterHasFeature");
extern fn void wgpuAdapterRequestDevice(WGPUAdapter adapter,  WGPUDeviceDescriptor* descriptor, WGPURequestDeviceCallback callback, void* userdata) @extern("wgpuAdapterRequestDevice");
extern fn void wgpuAdapterReference(WGPUAdapter adapter) @extern("wgpuAdapterReference");
extern fn void wgpuAdapterRelease(WGPUAdapter adapter) @extern("wgpuAdapterRelease");

// Methods of BindGroup
extern fn void wgpuBindGroupSetLabel(WGPUBindGroup bindGroup, char* label) @extern("wgpuBindGroupSetLabel");
extern fn void wgpuBindGroupReference(WGPUBindGroup bindGroup) @extern("wgpuBindGroupReference");
extern fn void wgpuBindGroupRelease(WGPUBindGroup bindGroup) @extern("wgpuBindGroupRelease");

// Methods of BindGroupLayout
extern fn void wgpuBindGroupLayoutSetLabel(WGPUBindGroupLayout bindGroupLayout, char* label) @extern("wgpuBindGroupLayoutSetLabel");
extern fn void wgpuBindGroupLayoutReference(WGPUBindGroupLayout bindGroupLayout) @extern("wgpuBindGroupLayoutReference");
extern fn void wgpuBindGroupLayoutRelease(WGPUBindGroupLayout bindGroupLayout) @extern("wgpuBindGroupLayoutRelease");

// Methods of Buffer
extern fn void wgpuBufferDestroy(WGPUBuffer buffer) @extern("wgpuBufferDestroy");
extern fn void* wgpuBufferGetConstMappedRange(WGPUBuffer buffer, usz offset, usz size) @extern("wgpuBufferGetConstMappedRange");
extern fn WGPUBufferMapState wgpuBufferGetMapState(WGPUBuffer buffer) @extern("wgpuBufferGetMapState");
extern fn void* wgpuBufferGetMappedRange(WGPUBuffer buffer, usz offset, usz size) @extern("wgpuBufferGetMappedRange");
extern fn ulong wgpuBufferGetSize(WGPUBuffer buffer) @extern("wgpuBufferGetSize");
extern fn WGPUBufferUsageFlags wgpuBufferGetUsage(WGPUBuffer buffer) @extern("wgpuBufferGetUsage");
extern fn void wgpuBufferMapAsync(WGPUBuffer buffer, WGPUMapModeFlags mode, usz offset, usz size, WGPUBufferMapCallback callback, void* userdata) @extern("wgpuBufferMapAsync");
extern fn void wgpuBufferSetLabel(WGPUBuffer buffer, char* label) @extern("wgpuBufferSetLabel");
extern fn void wgpuBufferUnmap(WGPUBuffer buffer) @extern("wgpuBufferUnmap");
extern fn void wgpuBufferReference(WGPUBuffer buffer) @extern("wgpuBufferReference");
extern fn void wgpuBufferRelease(WGPUBuffer buffer) @extern("wgpuBufferRelease");

// Methods of CommandBuffer
extern fn void wgpuCommandBufferSetLabel(WGPUCommandBuffer commandBuffer, char* label) @extern("wgpuCommandBufferSetLabel");
extern fn void wgpuCommandBufferReference(WGPUCommandBuffer commandBuffer) @extern("wgpuCommandBufferReference");
extern fn void wgpuCommandBufferRelease(WGPUCommandBuffer commandBuffer) @extern("wgpuCommandBufferRelease");

// Methods of CommandEncoder
extern fn WGPUComputePassEncoder wgpuCommandEncoderBeginComputePass(WGPUCommandEncoder commandEncoder,  WGPUComputePassDescriptor* descriptor) @extern("wgpuCommandEncoderBeginComputePass");
extern fn WGPURenderPassEncoder wgpuCommandEncoderBeginRenderPass(WGPUCommandEncoder commandEncoder, WGPURenderPassDescriptor* descriptor) @extern("wgpuCommandEncoderBeginRenderPass");
extern fn void wgpuCommandEncoderClearBuffer(WGPUCommandEncoder commandEncoder, WGPUBuffer buffer, ulong offset, ulong size) @extern("wgpuCommandEncoderClearBuffer");
extern fn void wgpuCommandEncoderCopyBufferToBuffer(WGPUCommandEncoder commandEncoder, WGPUBuffer source, ulong sourceOffset, WGPUBuffer destination, ulong destinationOffset, ulong size) @extern("wgpuCommandEncoderCopyBufferToBuffer");
extern fn void wgpuCommandEncoderCopyBufferToTexture(WGPUCommandEncoder commandEncoder, WGPUImageCopyBuffer* source, WGPUImageCopyTexture* destination, WGPUExtent3D* copySize) @extern("wgpuCommandEncoderCopyBufferToTexture");
extern fn void wgpuCommandEncoderCopyTextureToBuffer(WGPUCommandEncoder commandEncoder, WGPUImageCopyTexture* source, WGPUImageCopyBuffer* destination, WGPUExtent3D* copySize) @extern("wgpuCommandEncoderCopyTextureToBuffer");
extern fn void wgpuCommandEncoderCopyTextureToTexture(WGPUCommandEncoder commandEncoder, WGPUImageCopyTexture* source, WGPUImageCopyTexture* destination, WGPUExtent3D* copySize) @extern("wgpuCommandEncoderCopyTextureToTexture");
extern fn WGPUCommandBuffer wgpuCommandEncoderFinish(WGPUCommandEncoder commandEncoder,  WGPUCommandBufferDescriptor* descriptor) @extern("wgpuCommandEncoderFinish");
extern fn void wgpuCommandEncoderInsertDebugMarker(WGPUCommandEncoder commandEncoder, char* markerLabel) @extern("wgpuCommandEncoderInsertDebugMarker");
extern fn void wgpuCommandEncoderPopDebugGroup(WGPUCommandEncoder commandEncoder) @extern("wgpuCommandEncoderPopDebugGroup");
extern fn void wgpuCommandEncoderPushDebugGroup(WGPUCommandEncoder commandEncoder, char* groupLabel) @extern("wgpuCommandEncoderPushDebugGroup");
extern fn void wgpuCommandEncoderResolveQuerySet(WGPUCommandEncoder commandEncoder, WGPUQuerySet querySet, uint firstQuery, uint queryCount, WGPUBuffer destination, ulong destinationOffset) @extern("wgpuCommandEncoderResolveQuerySet");
extern fn void wgpuCommandEncoderSetLabel(WGPUCommandEncoder commandEncoder, char* label) @extern("wgpuCommandEncoderSetLabel");
extern fn void wgpuCommandEncoderWriteTimestamp(WGPUCommandEncoder commandEncoder, WGPUQuerySet querySet, uint queryIndex) @extern("wgpuCommandEncoderWriteTimestamp");
extern fn void wgpuCommandEncoderReference(WGPUCommandEncoder commandEncoder) @extern("wgpuCommandEncoderReference");
extern fn void wgpuCommandEncoderRelease(WGPUCommandEncoder commandEncoder) @extern("wgpuCommandEncoderRelease");

// Methods of ComputePassEncoder
extern fn void wgpuComputePassEncoderDispatchWorkgroups(WGPUComputePassEncoder computePassEncoder, uint workgroupCountX, uint workgroupCountY, uint workgroupCountZ) @extern("wgpuComputePassEncoderDispatchWorkgroups");
extern fn void wgpuComputePassEncoderDispatchWorkgroupsIndirect(WGPUComputePassEncoder computePassEncoder, WGPUBuffer indirectBuffer, ulong indirectOffset) @extern("wgpuComputePassEncoderDispatchWorkgroupsIndirect");
extern fn void wgpuComputePassEncoderEnd(WGPUComputePassEncoder computePassEncoder) @extern("wgpuComputePassEncoderEnd");
extern fn void wgpuComputePassEncoderInsertDebugMarker(WGPUComputePassEncoder computePassEncoder, char* markerLabel) @extern("wgpuComputePassEncoderInsertDebugMarker");
extern fn void wgpuComputePassEncoderPopDebugGroup(WGPUComputePassEncoder computePassEncoder) @extern("wgpuComputePassEncoderPopDebugGroup");
extern fn void wgpuComputePassEncoderPushDebugGroup(WGPUComputePassEncoder computePassEncoder, char* groupLabel) @extern("wgpuComputePassEncoderPushDebugGroup");
extern fn void wgpuComputePassEncoderSetBindGroup(WGPUComputePassEncoder computePassEncoder, uint groupIndex,  WGPUBindGroup group, usz dynamicOffsetCount, uint* dynamicOffsets) @extern("wgpuComputePassEncoderSetBindGroup");
extern fn void wgpuComputePassEncoderSetLabel(WGPUComputePassEncoder computePassEncoder, char* label) @extern("wgpuComputePassEncoderSetLabel");
extern fn void wgpuComputePassEncoderSetPipeline(WGPUComputePassEncoder computePassEncoder, WGPUComputePipeline pipeline) @extern("wgpuComputePassEncoderSetPipeline");
extern fn void wgpuComputePassEncoderReference(WGPUComputePassEncoder computePassEncoder) @extern("wgpuComputePassEncoderReference");
extern fn void wgpuComputePassEncoderRelease(WGPUComputePassEncoder computePassEncoder) @extern("wgpuComputePassEncoderRelease");

// Methods of ComputePipeline
extern fn WGPUBindGroupLayout wgpuComputePipelineGetBindGroupLayout(WGPUComputePipeline computePipeline, uint groupIndex) @extern("wgpuComputePipelineGetBindGroupLayout");
extern fn void wgpuComputePipelineSetLabel(WGPUComputePipeline computePipeline, char* label) @extern("wgpuComputePipelineSetLabel");
extern fn void wgpuComputePipelineReference(WGPUComputePipeline computePipeline) @extern("wgpuComputePipelineReference");
extern fn void wgpuComputePipelineRelease(WGPUComputePipeline computePipeline) @extern("wgpuComputePipelineRelease");

// Methods of Device
extern fn WGPUBindGroup wgpuDeviceCreateBindGroup(WGPUDevice device, WGPUBindGroupDescriptor* descriptor) @extern("wgpuDeviceCreateBindGroup");
extern fn WGPUBindGroupLayout wgpuDeviceCreateBindGroupLayout(WGPUDevice device, WGPUBindGroupLayoutDescriptor* descriptor) @extern("wgpuDeviceCreateBindGroupLayout");
extern fn WGPUBuffer wgpuDeviceCreateBuffer(WGPUDevice device, WGPUBufferDescriptor* descriptor) @extern("wgpuDeviceCreateBuffer");
extern fn WGPUCommandEncoder wgpuDeviceCreateCommandEncoder(WGPUDevice device,  WGPUCommandEncoderDescriptor* descriptor) @extern("wgpuDeviceCreateCommandEncoder");
extern fn WGPUComputePipeline wgpuDeviceCreateComputePipeline(WGPUDevice device, WGPUComputePipelineDescriptor* descriptor) @extern("wgpuDeviceCreateComputePipeline");
extern fn void wgpuDeviceCreateComputePipelineAsync(WGPUDevice device, WGPUComputePipelineDescriptor* descriptor, WGPUCreateComputePipelineAsyncCallback callback, void* userdata) @extern("wgpuDeviceCreateComputePipelineAsync");
extern fn WGPUPipelineLayout wgpuDeviceCreatePipelineLayout(WGPUDevice device, WGPUPipelineLayoutDescriptor* descriptor) @extern("wgpuDeviceCreatePipelineLayout");
extern fn WGPUQuerySet wgpuDeviceCreateQuerySet(WGPUDevice device, WGPUQuerySetDescriptor* descriptor) @extern("wgpuDeviceCreateQuerySet");
extern fn WGPURenderBundleEncoder wgpuDeviceCreateRenderBundleEncoder(WGPUDevice device, WGPURenderBundleEncoderDescriptor* descriptor) @extern("wgpuDeviceCreateRenderBundleEncoder");
extern fn WGPURenderPipeline wgpuDeviceCreateRenderPipeline(WGPUDevice device, WGPURenderPipelineDescriptor* descriptor) @extern("wgpuDeviceCreateRenderPipeline");
extern fn void wgpuDeviceCreateRenderPipelineAsync(WGPUDevice device, WGPURenderPipelineDescriptor* descriptor, WGPUCreateRenderPipelineAsyncCallback callback, void* userdata) @extern("wgpuDeviceCreateRenderPipelineAsync");
extern fn WGPUSampler wgpuDeviceCreateSampler(WGPUDevice device,  WGPUSamplerDescriptor* descriptor) @extern("wgpuDeviceCreateSampler");
extern fn WGPUShaderModule wgpuDeviceCreateShaderModule(WGPUDevice device, WGPUShaderModuleDescriptor* descriptor) @extern("wgpuDeviceCreateShaderModule");
extern fn WGPUTexture wgpuDeviceCreateTexture(WGPUDevice device, WGPUTextureDescriptor* descriptor) @extern("wgpuDeviceCreateTexture");
extern fn void wgpuDeviceDestroy(WGPUDevice device) @extern("wgpuDeviceDestroy");
extern fn usz wgpuDeviceEnumerateFeatures(WGPUDevice device, WGPUFeatureName* features) @extern("wgpuDeviceEnumerateFeatures");
extern fn WGPUBool wgpuDeviceGetLimits(WGPUDevice device, WGPUSupportedLimits* limits) @extern("wgpuDeviceGetLimits");
extern fn WGPUQueue wgpuDeviceGetQueue(WGPUDevice device) @extern("wgpuDeviceGetQueue");
extern fn WGPUBool wgpuDeviceHasFeature(WGPUDevice device, WGPUFeatureName feature) @extern("wgpuDeviceHasFeature");
extern fn void wgpuDevicePopErrorScope(WGPUDevice device, WGPUErrorCallback callback, void* userdata) @extern("wgpuDevicePopErrorScope");
extern fn void wgpuDevicePushErrorScope(WGPUDevice device, WGPUErrorFilter filter) @extern("wgpuDevicePushErrorScope");
extern fn void wgpuDeviceSetLabel(WGPUDevice device, char* label) @extern("wgpuDeviceSetLabel");
extern fn void wgpuDeviceSetUncapturedErrorCallback(WGPUDevice device, WGPUErrorCallback callback, void* userdata) @extern("wgpuDeviceSetUncapturedErrorCallback");
extern fn void wgpuDeviceReference(WGPUDevice device) @extern("wgpuDeviceReference");
extern fn void wgpuDeviceRelease(WGPUDevice device) @extern("wgpuDeviceRelease");

// Methods of Instance
extern fn WGPUSurface wgpuInstanceCreateSurface(WGPUInstance instance, WGPUSurfaceDescriptor* descriptor) @extern("wgpuInstanceCreateSurface");
extern fn void wgpuInstanceProcessEvents(WGPUInstance instance) @extern("wgpuInstanceProcessEvents");
extern fn void wgpuInstanceRequestAdapter(WGPUInstance instance,  WGPURequestAdapterOptions* options, WGPURequestAdapterCallback callback, void* userdata) @extern("wgpuInstanceRequestAdapter");
extern fn void wgpuInstanceReference(WGPUInstance instance) @extern("wgpuInstanceReference");
extern fn void wgpuInstanceRelease(WGPUInstance instance) @extern("wgpuInstanceRelease");

// Methods of PipelineLayout
extern fn void wgpuPipelineLayoutSetLabel(WGPUPipelineLayout pipelineLayout, char* label) @extern("wgpuPipelineLayoutSetLabel");
extern fn void wgpuPipelineLayoutReference(WGPUPipelineLayout pipelineLayout) @extern("wgpuPipelineLayoutReference");
extern fn void wgpuPipelineLayoutRelease(WGPUPipelineLayout pipelineLayout) @extern("wgpuPipelineLayoutRelease");

// Methods of QuerySet
extern fn void wgpuQuerySetDestroy(WGPUQuerySet querySet) @extern("wgpuQuerySetDestroy");
extern fn uint wgpuQuerySetGetCount(WGPUQuerySet querySet) @extern("wgpuQuerySetGetCount");
extern fn WGPUQueryType wgpuQuerySetGetType(WGPUQuerySet querySet) @extern("wgpuQuerySetGetType");
extern fn void wgpuQuerySetSetLabel(WGPUQuerySet querySet, char* label) @extern("wgpuQuerySetSetLabel");
extern fn void wgpuQuerySetReference(WGPUQuerySet querySet) @extern("wgpuQuerySetReference");
extern fn void wgpuQuerySetRelease(WGPUQuerySet querySet) @extern("wgpuQuerySetRelease");

// Methods of Queue
extern fn void wgpuQueueOnSubmittedWorkDone(WGPUQueue queue, WGPUQueueWorkDoneCallback callback, void* userdata) @extern("wgpuQueueOnSubmittedWorkDone");
extern fn void wgpuQueueSetLabel(WGPUQueue queue, char* label) @extern("wgpuQueueSetLabel");
extern fn void wgpuQueueSubmit(WGPUQueue queue, usz commandCount, WGPUCommandBuffer* commands) @extern("wgpuQueueSubmit");
extern fn void wgpuQueueWriteBuffer(WGPUQueue queue, WGPUBuffer buffer, ulong bufferOffset, void* data, usz size) @extern("wgpuQueueWriteBuffer");
extern fn void wgpuQueueWriteTexture(WGPUQueue queue, WGPUImageCopyTexture* destination, void* data, usz dataSize, WGPUTextureDataLayout* dataLayout, WGPUExtent3D* writeSize) @extern("wgpuQueueWriteTexture");
extern fn void wgpuQueueReference(WGPUQueue queue) @extern("wgpuQueueReference");
extern fn void wgpuQueueRelease(WGPUQueue queue) @extern("wgpuQueueRelease");

// Methods of RenderBundle
extern fn void wgpuRenderBundleSetLabel(WGPURenderBundle renderBundle, char* label) @extern("wgpuRenderBundleSetLabel");
extern fn void wgpuRenderBundleReference(WGPURenderBundle renderBundle) @extern("wgpuRenderBundleReference");
extern fn void wgpuRenderBundleRelease(WGPURenderBundle renderBundle) @extern("wgpuRenderBundleRelease");

// Methods of RenderBundleEncoder
extern fn void wgpuRenderBundleEncoderDraw(WGPURenderBundleEncoder renderBundleEncoder, uint vertexCount, uint instanceCount, uint firstVertex, uint firstInstance) @extern("wgpuRenderBundleEncoderDraw");
extern fn void wgpuRenderBundleEncoderDrawIndexed(WGPURenderBundleEncoder renderBundleEncoder, uint indexCount, uint instanceCount, uint firstIndex, int baseVertex, uint firstInstance) @extern("wgpuRenderBundleEncoderDrawIndexed");
extern fn void wgpuRenderBundleEncoderDrawIndexedIndirect(WGPURenderBundleEncoder renderBundleEncoder, WGPUBuffer indirectBuffer, ulong indirectOffset) @extern("wgpuRenderBundleEncoderDrawIndexedIndirect");
extern fn void wgpuRenderBundleEncoderDrawIndirect(WGPURenderBundleEncoder renderBundleEncoder, WGPUBuffer indirectBuffer, ulong indirectOffset) @extern("wgpuRenderBundleEncoderDrawIndirect");
extern fn WGPURenderBundle wgpuRenderBundleEncoderFinish(WGPURenderBundleEncoder renderBundleEncoder,  WGPURenderBundleDescriptor* descriptor) @extern("wgpuRenderBundleEncoderFinish");
extern fn void wgpuRenderBundleEncoderInsertDebugMarker(WGPURenderBundleEncoder renderBundleEncoder, char* markerLabel) @extern("wgpuRenderBundleEncoderInsertDebugMarker");
extern fn void wgpuRenderBundleEncoderPopDebugGroup(WGPURenderBundleEncoder renderBundleEncoder) @extern("wgpuRenderBundleEncoderPopDebugGroup");
extern fn void wgpuRenderBundleEncoderPushDebugGroup(WGPURenderBundleEncoder renderBundleEncoder, char* groupLabel) @extern("wgpuRenderBundleEncoderPushDebugGroup");
extern fn void wgpuRenderBundleEncoderSetBindGroup(WGPURenderBundleEncoder renderBundleEncoder, uint groupIndex,  WGPUBindGroup group, usz dynamicOffsetCount, uint* dynamicOffsets) @extern("wgpuRenderBundleEncoderSetBindGroup");
extern fn void wgpuRenderBundleEncoderSetIndexBuffer(WGPURenderBundleEncoder renderBundleEncoder, WGPUBuffer buffer, WGPUIndexFormat format, ulong offset, ulong size) @extern("wgpuRenderBundleEncoderSetIndexBuffer");
extern fn void wgpuRenderBundleEncoderSetLabel(WGPURenderBundleEncoder renderBundleEncoder, char* label) @extern("wgpuRenderBundleEncoderSetLabel");
extern fn void wgpuRenderBundleEncoderSetPipeline(WGPURenderBundleEncoder renderBundleEncoder, WGPURenderPipeline pipeline) @extern("wgpuRenderBundleEncoderSetPipeline");
extern fn void wgpuRenderBundleEncoderSetVertexBuffer(WGPURenderBundleEncoder renderBundleEncoder, uint slot,  WGPUBuffer buffer, ulong offset, ulong size) @extern("wgpuRenderBundleEncoderSetVertexBuffer");
extern fn void wgpuRenderBundleEncoderReference(WGPURenderBundleEncoder renderBundleEncoder) @extern("wgpuRenderBundleEncoderReference");
extern fn void wgpuRenderBundleEncoderRelease(WGPURenderBundleEncoder renderBundleEncoder) @extern("wgpuRenderBundleEncoderRelease");

// Methods of RenderPassEncoder
extern fn void wgpuRenderPassEncoderBeginOcclusionQuery(WGPURenderPassEncoder renderPassEncoder, uint queryIndex) @extern("wgpuRenderPassEncoderBeginOcclusionQuery");
extern fn void wgpuRenderPassEncoderDraw(WGPURenderPassEncoder renderPassEncoder, uint vertexCount, uint instanceCount, uint firstVertex, uint firstInstance) @extern("wgpuRenderPassEncoderDraw");
extern fn void wgpuRenderPassEncoderDrawIndexed(WGPURenderPassEncoder renderPassEncoder, uint indexCount, uint instanceCount, uint firstIndex, int baseVertex, uint firstInstance) @extern("wgpuRenderPassEncoderDrawIndexed");
extern fn void wgpuRenderPassEncoderDrawIndexedIndirect(WGPURenderPassEncoder renderPassEncoder, WGPUBuffer indirectBuffer, ulong indirectOffset) @extern("wgpuRenderPassEncoderDrawIndexedIndirect");
extern fn void wgpuRenderPassEncoderDrawIndirect(WGPURenderPassEncoder renderPassEncoder, WGPUBuffer indirectBuffer, ulong indirectOffset) @extern("wgpuRenderPassEncoderDrawIndirect");
extern fn void wgpuRenderPassEncoderEnd(WGPURenderPassEncoder renderPassEncoder) @extern("wgpuRenderPassEncoderEnd");
extern fn void wgpuRenderPassEncoderEndOcclusionQuery(WGPURenderPassEncoder renderPassEncoder) @extern("wgpuRenderPassEncoderEndOcclusionQuery");
extern fn void wgpuRenderPassEncoderExecuteBundles(WGPURenderPassEncoder renderPassEncoder, usz bundleCount, WGPURenderBundle* bundles) @extern("wgpuRenderPassEncoderExecuteBundles");
extern fn void wgpuRenderPassEncoderInsertDebugMarker(WGPURenderPassEncoder renderPassEncoder, char* markerLabel) @extern("wgpuRenderPassEncoderInsertDebugMarker");
extern fn void wgpuRenderPassEncoderPopDebugGroup(WGPURenderPassEncoder renderPassEncoder) @extern("wgpuRenderPassEncoderPopDebugGroup");
extern fn void wgpuRenderPassEncoderPushDebugGroup(WGPURenderPassEncoder renderPassEncoder, char* groupLabel) @extern("wgpuRenderPassEncoderPushDebugGroup");
extern fn void wgpuRenderPassEncoderSetBindGroup(WGPURenderPassEncoder renderPassEncoder, uint groupIndex,  WGPUBindGroup group, usz dynamicOffsetCount, uint* dynamicOffsets) @extern("wgpuRenderPassEncoderSetBindGroup");
extern fn void wgpuRenderPassEncoderSetBlendConstant(WGPURenderPassEncoder renderPassEncoder, WGPUColor* color) @extern("wgpuRenderPassEncoderSetBlendConstant");
extern fn void wgpuRenderPassEncoderSetIndexBuffer(WGPURenderPassEncoder renderPassEncoder, WGPUBuffer buffer, WGPUIndexFormat format, ulong offset, ulong size) @extern("wgpuRenderPassEncoderSetIndexBuffer");
extern fn void wgpuRenderPassEncoderSetLabel(WGPURenderPassEncoder renderPassEncoder, char* label) @extern("wgpuRenderPassEncoderSetLabel");
extern fn void wgpuRenderPassEncoderSetPipeline(WGPURenderPassEncoder renderPassEncoder, WGPURenderPipeline pipeline) @extern("wgpuRenderPassEncoderSetPipeline");
extern fn void wgpuRenderPassEncoderSetScissorRect(WGPURenderPassEncoder renderPassEncoder, uint x, uint y, uint width, uint height) @extern("wgpuRenderPassEncoderSetScissorRect");
extern fn void wgpuRenderPassEncoderSetStencilReference(WGPURenderPassEncoder renderPassEncoder, uint reference) @extern("wgpuRenderPassEncoderSetStencilReference");
extern fn void wgpuRenderPassEncoderSetVertexBuffer(WGPURenderPassEncoder renderPassEncoder, uint slot,  WGPUBuffer buffer, ulong offset, ulong size) @extern("wgpuRenderPassEncoderSetVertexBuffer");
extern fn void wgpuRenderPassEncoderSetViewport(WGPURenderPassEncoder renderPassEncoder, float x, float y, float width, float height, float minDepth, float maxDepth) @extern("wgpuRenderPassEncoderSetViewport");
extern fn void wgpuRenderPassEncoderReference(WGPURenderPassEncoder renderPassEncoder) @extern("wgpuRenderPassEncoderReference");
extern fn void wgpuRenderPassEncoderRelease(WGPURenderPassEncoder renderPassEncoder) @extern("wgpuRenderPassEncoderRelease");

// Methods of RenderPipeline
extern fn WGPUBindGroupLayout wgpuRenderPipelineGetBindGroupLayout(WGPURenderPipeline renderPipeline, uint groupIndex) @extern("wgpuRenderPipelineGetBindGroupLayout");
extern fn void wgpuRenderPipelineSetLabel(WGPURenderPipeline renderPipeline, char* label) @extern("wgpuRenderPipelineSetLabel");
extern fn void wgpuRenderPipelineReference(WGPURenderPipeline renderPipeline) @extern("wgpuRenderPipelineReference");
extern fn void wgpuRenderPipelineRelease(WGPURenderPipeline renderPipeline) @extern("wgpuRenderPipelineRelease");

// Methods of Sampler
extern fn void wgpuSamplerSetLabel(WGPUSampler sampler, char* label) @extern("wgpuSamplerSetLabel");
extern fn void wgpuSamplerReference(WGPUSampler sampler) @extern("wgpuSamplerReference");
extern fn void wgpuSamplerRelease(WGPUSampler sampler) @extern("wgpuSamplerRelease");

// Methods of ShaderModule
extern fn void wgpuShaderModuleGetCompilationInfo(WGPUShaderModule shaderModule, WGPUCompilationInfoCallback callback, void* userdata) @extern("wgpuShaderModuleGetCompilationInfo");
extern fn void wgpuShaderModuleSetLabel(WGPUShaderModule shaderModule, char* label) @extern("wgpuShaderModuleSetLabel");
extern fn void wgpuShaderModuleReference(WGPUShaderModule shaderModule) @extern("wgpuShaderModuleReference");
extern fn void wgpuShaderModuleRelease(WGPUShaderModule shaderModule) @extern("wgpuShaderModuleRelease");

// Methods of Surface
extern fn void wgpuSurfaceConfigure(WGPUSurface surface, WGPUSurfaceConfiguration* config) @extern("wgpuSurfaceConfigure");
extern fn void wgpuSurfaceGetCapabilities(WGPUSurface surface, WGPUAdapter adapter, WGPUSurfaceCapabilities* capabilities) @extern("wgpuSurfaceGetCapabilities");
extern fn void wgpuSurfaceGetCurrentTexture(WGPUSurface surface, WGPUSurfaceTexture* surfaceTexture) @extern("wgpuSurfaceGetCurrentTexture");
extern fn WGPUTextureFormat wgpuSurfaceGetPreferredFormat(WGPUSurface surface, WGPUAdapter adapter) @extern("wgpuSurfaceGetPreferredFormat");
extern fn void wgpuSurfacePresent(WGPUSurface surface) @extern("wgpuSurfacePresent");
extern fn void wgpuSurfaceUnconfigure(WGPUSurface surface) @extern("wgpuSurfaceUnconfigure");
extern fn void wgpuSurfaceReference(WGPUSurface surface) @extern("wgpuSurfaceReference");
extern fn void wgpuSurfaceRelease(WGPUSurface surface) @extern("wgpuSurfaceRelease");

// Methods of SurfaceCapabilities
extern fn void wgpuSurfaceCapabilitiesFreeMembers(WGPUSurfaceCapabilities capabilities) @extern("wgpuSurfaceCapabilitiesFreeMembers");

// Methods of Texture
extern fn WGPUTextureView wgpuTextureCreateView(WGPUTexture texture,  WGPUTextureViewDescriptor* descriptor) @extern("wgpuTextureCreateView");
extern fn void wgpuTextureDestroy(WGPUTexture texture) @extern("wgpuTextureDestroy");
extern fn uint wgpuTextureGetDepthOrArrayLayers(WGPUTexture texture) @extern("wgpuTextureGetDepthOrArrayLayers");
extern fn WGPUTextureDimension wgpuTextureGetDimension(WGPUTexture texture) @extern("wgpuTextureGetDimension");
extern fn WGPUTextureFormat wgpuTextureGetFormat(WGPUTexture texture) @extern("wgpuTextureGetFormat");
extern fn uint wgpuTextureGetHeight(WGPUTexture texture) @extern("wgpuTextureGetHeight");
extern fn uint wgpuTextureGetMipLevelCount(WGPUTexture texture) @extern("wgpuTextureGetMipLevelCount");
extern fn uint wgpuTextureGetSampleCount(WGPUTexture texture) @extern("wgpuTextureGetSampleCount");
extern fn WGPUTextureUsageFlags wgpuTextureGetUsage(WGPUTexture texture) @extern("wgpuTextureGetUsage");
extern fn uint wgpuTextureGetWidth(WGPUTexture texture) @extern("wgpuTextureGetWidth");
extern fn void wgpuTextureSetLabel(WGPUTexture texture, char* label) @extern("wgpuTextureSetLabel");
extern fn void wgpuTextureReference(WGPUTexture texture) @extern("wgpuTextureReference");
extern fn void wgpuTextureRelease(WGPUTexture texture) @extern("wgpuTextureRelease");

// Methods of TextureView
extern fn void wgpuTextureViewSetLabel(WGPUTextureView textureView, char* label) @extern("wgpuTextureViewSetLabel");
extern fn void wgpuTextureViewReference(WGPUTextureView textureView) @extern("wgpuTextureViewReference");
extern fn void wgpuTextureViewRelease(WGPUTextureView textureView) @extern("wgpuTextureViewRelease");