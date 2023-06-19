CC = g++
CFLAGS = -std=c++17 -Wall -O2
SOURCES = main.cpp documento.cpp motorbusca.cpp
OBJECTS = $(SOURCES:.cpp=.o)
EXECUTABLE = index

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJECTS) $(EXECUTABLE)
