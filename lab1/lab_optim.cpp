#include <iostream>
#include <vector>
#include <chrono>
#include <iomanip>
#include <omp.h>

std::vector<std::vector<int>> generate_matrix(int rows, int cols) {
    std::vector<std::vector<int>> matrix(rows, std::vector<int>(cols));
    
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            matrix[i][j] = rand() % 100 + 1; // генерируем числа от 1 до 100
        }
    }
    
    return matrix;
}

std::vector<std::vector<int>> transpose(const std::vector<std::vector<int>>& matrix) {
    int rows = matrix.size();
    int cols = matrix[0].size();

    std::vector<std::vector<int>> transposed(cols, std::vector<int>(rows));
    
    #pragma omp parallel for collapse(2)
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            transposed[j][i] = matrix[i][j];
        }
    }
    
    return transposed;
}

int main() {   
    int rows = 10000;
    int cols = 10000;
    long long total_time = 0;
    const int iterations = 10;
    
    for(int i = 1; i <= iterations; i++) {
        std::vector<std::vector<int>> original_matrix = generate_matrix(rows, cols);
        
        auto start_transpose = std::chrono::high_resolution_clock::now();
        std::vector<std::vector<int>> transposed_matrix = transpose(original_matrix);
        auto end_transpose = std::chrono::high_resolution_clock::now();
        auto duration_transpose = std::chrono::duration_cast<std::chrono::milliseconds>(end_transpose - start_transpose);
        
        total_time += duration_transpose.count();
        
        std::cout << "Iteration " << i << " time: " << duration_transpose.count() << " ms" << std::endl;
    }
    
    double average_time = static_cast<double>(total_time) / iterations;
    std::cout << "\nAverage transpose time: " << average_time << " ms" << std::endl;
    
    return 0;
}