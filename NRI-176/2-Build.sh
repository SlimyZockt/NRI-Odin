#!/bin/bash
set -e

mkdir -p "_Build"

cd "_Build"
cmake .. -D NRI_STATIC_LIBRARY=ON NRI_ENABLE_NIS_SDK=ON NRI_ENABLE_IMGUI_EXTENSION=ON NRI_ENABLE_VK_SUPPORT=ON
cmake --build . --config Release -j $(nproc) 
cmake --build . --config Debug -j $(nproc)
cd ..
