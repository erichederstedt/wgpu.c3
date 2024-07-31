# wgpu.c3
## wgpu-native WebGPU bindings for C3
These bindings are based of the wgpu-native v0.19.4.1 release. The exact header it is based on is in misc/ and pre-compiled libraries for windows in lib/

## Examples
There is a basic example for displaying a triangle. The example compiles and runs on win32 and compiles to wasm. Have not tested if the wasm build actually runs though.

The examples use glfw for window handling. The bindings for that were grabbed from [here](https://github.com/tonis2/opengl-examples/blob/main/examples/gltf.c3).