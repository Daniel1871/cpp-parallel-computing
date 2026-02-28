#include <iostream>
#include <vector>
#include <cstdlib>
#include <mpi.h>

int main(int argc, char* argv[]) {
    MPI_Init(&argc, &argv);

    int rank, num_procs;
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    MPI_Comm_size(MPI_COMM_WORLD, &num_procs);

    const int N = 10000;
    const int iterations = 10;

    std::vector<int> rows_count(num_procs);
    std::vector<int> row_offset(num_procs);
    for (int r = 0; r < num_procs; r++) {
        rows_count[r] = N / num_procs + (r < N % num_procs ? 1 : 0);
        row_offset[r] = (r > 0) ? row_offset[r - 1] + rows_count[r - 1] : 0;
    }
    const int my_rows = rows_count[rank];

    std::vector<int> scatter_counts(num_procs), scatter_displs(num_procs);
    for (int r = 0; r < num_procs; r++) {
        scatter_counts[r] = rows_count[r] * N;
        scatter_displs[r] = row_offset[r] * N;
    }

    std::vector<int> sendcounts(num_procs), sdispls(num_procs);
    std::vector<int> recvcounts(num_procs), rdispls(num_procs);
    int s_total = 0, r_total = 0;
    for (int q = 0; q < num_procs; q++) {
        sendcounts[q] = my_rows * rows_count[q];
        recvcounts[q] = my_rows * rows_count[q];
        sdispls[q] = s_total;
        rdispls[q] = r_total;
        s_total += sendcounts[q];
        r_total += recvcounts[q];
    }

    std::vector<int> matrix;
    std::vector<int> transposed;

    std::vector<int> local_rows(my_rows * N);
    std::vector<int> send_buf(my_rows * N);
    std::vector<int> recv_buf(my_rows * N);
    std::vector<int> local_transposed(my_rows * N);

    double total_time = 0.0;

    for (int iter = 1; iter <= iterations; iter++) {

        if (rank == 0) {
            matrix.resize(static_cast<size_t>(N) * N);
            for (int i = 0; i < N * N; i++) {
                matrix[i] = rand() % 100 + 1;
            }
            transposed.resize(static_cast<size_t>(N) * N);
        }

        MPI_Barrier(MPI_COMM_WORLD);
        double t_start = MPI_Wtime();

        MPI_Scatterv(
            rank == 0 ? matrix.data() : nullptr,
            scatter_counts.data(), scatter_displs.data(), MPI_INT,
            local_rows.data(), my_rows * N, MPI_INT,
            0, MPI_COMM_WORLD
        );

        for (int q = 0; q < num_procs; q++) {
            const int col_start = row_offset[q];
            const int q_cols = rows_count[q];
            const int offset = sdispls[q];
            for (int i = 0; i < my_rows; i++) {
                for (int j = 0; j < q_cols; j++) {
                    send_buf[offset + j * my_rows + i] =
                        local_rows[i * N + col_start + j];
                }
            }
        }

        MPI_Alltoallv(
            send_buf.data(),  sendcounts.data(), sdispls.data(), MPI_INT,
            recv_buf.data(),  recvcounts.data(), rdispls.data(), MPI_INT,
            MPI_COMM_WORLD
        );

        for (int q = 0; q < num_procs; q++) {
            const int col_start = row_offset[q];
            const int q_cols = rows_count[q];
            const int offset = rdispls[q];
            for (int i = 0; i < my_rows; i++) {
                for (int j = 0; j < q_cols; j++) {
                    local_transposed[i * N + col_start + j] =
                        recv_buf[offset + i * q_cols + j];
                }
            }
        }

        MPI_Gatherv(
            local_transposed.data(), my_rows * N, MPI_INT,
            rank == 0 ? transposed.data() : nullptr,
            scatter_counts.data(), scatter_displs.data(), MPI_INT,
            0, MPI_COMM_WORLD
        );

        MPI_Barrier(MPI_COMM_WORLD);
        double t_end = MPI_Wtime();

        double duration_ms = (t_end - t_start) * 1000.0;
        total_time += duration_ms;

        if (rank == 0) {
            std::cout << "Iteration " << iter
                      << " time: " << duration_ms << " ms" << std::endl;
        }
    }

    if (rank == 0) {
        double avg = total_time / iterations;
        std::cout << "\nAverage transpose time: " << avg << " ms"
                  << std::endl;
        std::cout << "Processes: " << num_procs << std::endl;
    }

    MPI_Finalize();
    return 0;
}
