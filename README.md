# CUDA with CMake
Trying out CUDA with CMake. With this procedure, everything should work seemlessly. Here are the steps:
- Put all cuda code (kernel) into `file.cu`
- Put a declaration of it in `file.hpp`
- Include `file.hpp` in your regular c++ programs.
- Add entry in cmakefile with `cuda_add_executable` inplace of `add_executable`. See my CMakefile for example.
- build everything with `mkdir build; cmake ../ && make`



**see also my gist on cmake for opencv: https://gist.github.com/mpkuse/c96010112ec07269d944e199d029303a **
