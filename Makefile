CC=g++
CFLAGS=-I/usr/local/include/eigen3 -std=c++11 -Ofast -march=native
LIBS=-lbenchmark -lpthread
main.o: main.cpp
	$(CC) -o main main.cpp $(CFLAGS) $(LIBS)
