# benchmarks for reporting performance regression in 3.3.0

on Intel(R) Core(TM) i5-6300U CPU @ 2.40GHz

The code that is benchmarked is essentially:

```cpp
    Eigen::Matrix4f mat1 = Eigen::Matrix4f::Random(4, 4);
    Eigen::Matrix4f mat2 = Eigen::Matrix4f::Random(4, 4);
    Eigen::Matrix4f mat3;
    mat3 = mat1 * mat2;
```

## float

|eigen version| arch | ubuntu 1404 | ubuntu 1604 |
|---|---|---|---|
|3.2.9|3431|4803|2953|
|3.3.0|10895|10614|10635|

## double

|eigen version| arch | ubuntu 1404 | ubuntu 1604 |
|---|---|---|---|
|3.2.9|6992|11037|6238|
|3.3.0|6318|5053|5069|

# gcc versions

- arch: 7.2.0
- ubuntu 1404: 4.8.4
- ubuntu 1604: 5.4.0

# gcc configuration

```
gcc -v
Using built-in specs.
COLLECT_GCC=gcc
COLLECT_LTO_WRAPPER=/usr/lib/gcc/x86_64-linux-gnu/4.8/lto-wrapper
Target: x86_64-linux-gnu
Configured with: ../src/configure -v --with-pkgversion='Ubuntu 4.8.4-2ubuntu1~14.04.3' --with-bugurl=file:///usr/share/doc/gcc-4.8/README.Bugs --enable-languages=c,c++,java,go,d,fortran,objc,obj-c++ --prefix=/usr --program-suffix=-4.8 --enable-shared --enable-linker-build-id --libexecdir=/usr/lib --without-included-gettext --enable-threads=posix --with-gxx-include-dir=/usr/include/c++/4.8 --libdir=/usr/lib --enable-nls --with-sysroot=/ --enable-clocale=gnu --enable-libstdcxx-debug --enable-libstdcxx-time=yes --enable-gnu-unique-object --disable-libmudflap --enable-plugin --with-system-zlib --disable-browser-plugin --enable-java-awt=gtk --enable-gtk-cairo --with-java-home=/usr/lib/jvm/java-1.5.0-gcj-4.8-amd64/jre --enable-java-home --with-jvm-root-dir=/usr/lib/jvm/java-1.5.0-gcj-4.8-amd64 --with-jvm-jar-dir=/usr/lib/jvm-exports/java-1.5.0-gcj-4.8-amd64 --with-arch-directory=amd64 --with-ecj-jar=/usr/share/java/eclipse-ecj.jar --enable-objc-gc --enable-multiarch --disable-werror --with-arch-32=i686 --with-abi=m64 --with-multilib-list=m32,m64,mx32 --with-tune=generic --enable-checking=release --build=x86_64-linux-gnu --host=x86_64-linux-gnu --target=x86_64-linux-gnu
Thread model: posix
gcc version 4.8.4 (Ubuntu 4.8.4-2ubuntu1~14.04.3)
```
