#include <Eigen/Core>
#include <benchmark/benchmark.h>

static const int num_iterations = 1000;

template<class T>
static inline void BM_EigenMatrix4(benchmark::State& state) {
    Eigen::Matrix<T, 4, 4> mat1 = Eigen::Matrix<T, 4, 4>::Random(4, 4);
    Eigen::Matrix<T, 4, 4> mat2 = Eigen::Matrix<T, 4, 4>::Random(4, 4);
    Eigen::Matrix<T, 4, 4> mat3;
    for (auto _ : state) {
        for (int i = 0; i < num_iterations; ++i) {
            benchmark::DoNotOptimize(mat3 = mat1 * mat2);
        }
    }
}

BENCHMARK_TEMPLATE(BM_EigenMatrix4, float);
BENCHMARK_TEMPLATE(BM_EigenMatrix4, double);
BENCHMARK_MAIN();
