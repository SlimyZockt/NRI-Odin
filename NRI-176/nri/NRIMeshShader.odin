// © 2021 NVIDIA Corporation

// Goal: mesh shaders
// https://www.khronos.org/blog/mesh-shading-for-vulkan
// https://microsoft.github.io/DirectX-Specs/d3d/MeshShader.html
package nri

foreign import lib "nri.lib"
_ :: lib

NRI_MESH_SHADER_H :: 1

NriDrawMeshTasksDesc :: struct {
	x, y, z: u32,
}

// Threadsafe: no
NriMeshShaderInterface :: struct {
	// Command buffer
	// {
	// Draw
	CmdDrawMeshTasks:         proc "c" (commandBuffer: ^NriCommandBuffer, drawMeshTasksDesc: ^NriDrawMeshTasksDesc),
	CmdDrawMeshTasksIndirect: proc "c" (commandBuffer: ^NriCommandBuffer, buffer: ^NriBuffer, offset: u64, drawNum: u32, stride: u32, countBuffer: ^NriBuffer, countBufferOffset: u64), // buffer contains "DrawMeshTasksDesc" commands
}

