CC=g++
CFLAGS=-I/usr/include/eigen3 -std=c++11 -Ofast -march=native
LIBS=-lbenchmark -lpthread
main.o: main.cpp
	$(CC) -o main main.cpp $(CFLAGS) $(LIBS)
float: main_float.cpp
	$(CC) -o main_float main_float.cpp $(CFLAGS) $(LIBS)