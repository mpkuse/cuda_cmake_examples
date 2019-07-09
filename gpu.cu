#include <iostream>
#include "gpu.hpp"

void printCudaVersion()
{
    std::cout << "CUDA Compiled version: " << std::endl;
    std::cout << "\t__CUDACC_VER_MAJOR__:" << __CUDACC_VER_MAJOR__ << "\t";
    std::cout << "\t__CUDACC_VER_MINOR__:" << __CUDACC_VER_MINOR__ << "\t";
    std::cout << "\t__CUDACC_VER_BUILD__:" << __CUDACC_VER_BUILD__ << "\t";


    int runtime_ver;
    cudaRuntimeGetVersion(&runtime_ver);
    std::cout << "CUDA Runtime version: " << runtime_ver << std::endl;

    int driver_ver;
    cudaDriverGetVersion(&driver_ver);
    std::cout << "CUDA Driver version: " << driver_ver << std::endl;
}
