### CMakeLists.txt for CUDA

cmake_minimum_required(VERSION 2.8)
find_package(CUDA QUIET REQUIRED)

# Pass options to NVCC
set(
    CUDA_NVCC_FLAGS
    ${CUDA_NVCC_FLAGS};
    -O3
    -gencode arch=compute_62,code=sm_62
    )


# For compilation ...
# Specify target & source files to compile it from
cuda_add_executable(
    hellocuda
    main.cc
    gpu.cu
    )

# For linking ...
# Specify target & libraries to link it with
target_link_libraries(
    hellocuda
    )
