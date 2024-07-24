all: compile link
#add all the header implementation .cpp file names here after main.cpp
compile:
	g++ -Isrc/include -c main.cpp Implementation/header.cpp 
#g++ -Isrc/include -c main.cpp Implementation/header.cpp 	
#add all the header implementation .o file names here before -o	
link:
	g++ main.o header.o -o Executable/main.exe -Lsrc/lib -lsfml-main -lsfml-graphics -lsfml-window -lsfml-system && del *.o && Executable\main.exe

