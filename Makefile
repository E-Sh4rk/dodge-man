CC=g++
CFLAGS=-g
SFML=./libraries/SFML-2.4.2
SRC=./src

all: dodge
    
dodge: main.o
	$(CC) $(CFLAGS) main.o -o dodge -L $(SFML)/lib -lsfml-graphics -lsfml-window -lsfml-system

%.o: $(SRC)/%.cpp
	$(CC) $(CFLAGS) -c $< -I $(SFML)/include
	
run: dodge
	export LD_LIBRARY_PATH=$(SFML)/lib && ./dodge

clean:
	rm *.o dodge

sfml:
	cd $(SFML); cmake ./ -DCMAKE_CXX_COMPILER=gcc
	cd $(SFML); make all