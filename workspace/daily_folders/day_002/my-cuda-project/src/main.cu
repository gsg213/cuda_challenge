#include <cuda_runtime.h>
#include "kernels.h"

int main() {
    // Launch the dummy kernel with 2 blocks and 4 threads per block
    dummyKernel<<<2, 4>>>();
    
    // Wait for GPU to finish before accessing on host
    cudaDeviceSynchronize();
    
    return 0;
}