from ubuntu:16.04

run apt-get update
run apt-get install -y git build-essential

# google benchmark
workdir /root/
run git clone https://github.com/google/benchmark.git
workdir benchmark
run mkdir build
workdir build
run cmake -DCMAKE_BUILD_TYPE=Release ..
run make
run make install

# benchmark repo
workdir /root/
# workaround for cache
ARG CACHE_DATE=00004
run git clone https://github.com/sergeant-wizard/eigen_matrix4_benchmark
workdir cd eigen_matrix4_benchmark
run make
run ./main
