from base/archlinux

run pacman -Syy
run pacman -S --noconfirm git gcc cmake make

# google benchmark
workdir /root/
run git clone https://github.com/google/benchmark.git
workdir benchmark
run mkdir build
workdir build
run cmake -DCMAKE_BUILD_TYPE=Release ..
run make
run make install

# eigen 3.2.9
workdir /root/
run git clone https://github.com/RLovelett/eigen
workdir eigen
run mkdir build
workdir build
run git checkout 3.2.9
run cmake -DCMAKE_BUILD_TYPE=Release ..
run make
run make install

# benchmark repo
workdir /root/
# workaround for cache
ARG CACHE_DATE=00007
run git clone https://github.com/sergeant-wizard/eigen_matrix4_benchmark
workdir eigen_matrix4_benchmark
run make
run ./main

# run again with eigen 3.3.4
workdir /root/eigen/build
run git checkout 3.3.4
run cmake -DCMAKE_BUILD_TYPE=Release ..
run make
run make install
workdir /root/eigen_matrix4_benchmark
run make
run ./main
