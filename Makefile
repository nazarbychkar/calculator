CC = g++
CFLAGS = -Wall -Wextra -std=c++17
TARGET = main
LIB = libcalculator.a

all: $(LIB) $(TARGET)

$(LIB): calculator.o
	ar rcs $(LIB) calculator.o

calculator.o: calculator.cpp calculator.h
	$(CC) $(CFLAGS) -c calculator.cpp

$(TARGET): main.o $(LIB)
	$(CC) $(CFLAGS) -o $(TARGET) main.o -L. -lcalculator

main.o: main.cpp calculator.h
	$(CC) $(CFLAGS) -c main.cpp

clean:
	rm -f *.o $(TARGET) $(LIB)
