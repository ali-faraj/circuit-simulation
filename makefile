CC = g++
CFLAGS = -g -Wall
INCLUDE = -I D:\Documents\eigen-3.4.0

exe: simulator

simulator: Device.hpp Device.cpp Circuit.hpp Circuit.cpp main.cpp

	$(CC) $(INCLUDE) $(CFLAGS) Device.hpp Device.cpp Circuit.hpp Circuit.cpp main.cpp -o simulator

clean:

	del *.o *.exe
