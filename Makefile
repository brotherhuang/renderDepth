CC = g++
CFLAGS = -fopenmp `pkg-config --cflags opencv`
INCLUDES = -I./include -I/usr/local/include/opencv -I/usr/local/include  
LIBDIR = -L./lib.Linux64 -L./usr/local/lib -L./usr/include/GL/
LIBS = -ltrimesh `pkg-config --libs opencv` -lGL -lGLU -lglut -lGLEW
SOURCES = renderDepth.cpp
OBJECTS = $(SOURCES:.cpp=.o)
MAIN = renderDepth
all:
	$(CC) $(CFLAGS) $(INCLUDES) -o $(MAIN) $(SOURCES) $(LIBDIR) $(LIBS) -std=c++11 -DNDEBUG

