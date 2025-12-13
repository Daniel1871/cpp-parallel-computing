#include <iostream>
#include <vector>
#include <iomanip>
#include <omp.h>

std::vector<std::vector<int>> generate_matrix(int rows, int cols) {
    std::vector<std::vector<int>> matrix(rows, std::vector<int>(cols));
    
    #pragma omp parallel for schedule(static)
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            matrix[i][j] = rand() % 100 + 1;
        }
    }
    
    return matrix;
}

std::vector<std::vector<int>> transpose(const std::vector<std::vector<int>>& matrix) {
    int rows = matrix.size();
    int cols = matrix[0].size();

    std::vector<std::vector<int>> transposed(cols, std::vector<int>(rows));
    
    #pragma omp parallel for schedule(static)
    for (int i = 0; i < rows; i++) {
        #pragma omp simd
        for (int j = 0; j < cols; j++) {
            transposed[j][i] = matrix[i][j];
        }
    }
    
    return transposed;
}

int main() {   
    int rows = 10000;
    int cols = 10000;
    double total_time = 0.0;
    const int iterations = 10;
    
    for(int i = 1; i <= iterations; i++) {
        std::vector<std::vector<int>> original_matrix = generate_matrix(rows, cols);
        
        double start_transpose = omp_get_wtime();
        std::vector<std::vector<int>> transposed_matrix = transpose(original_matrix);
        double end_transpose = omp_get_wtime();
        double duration_transpose = (end_transpose - start_transpose) * 1000.0;
        
        total_time += duration_transpose;
        
        std::cout << "Iteration " << i << " time: " << duration_transpose << " ms" << std::endl;
    }
    
    double average_time = total_time / iterations;
    std::cout << "\nAverage transpose time: " << average_time << " ms" << std::endl;
    
    return 0;
}
