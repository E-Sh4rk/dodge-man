CXX=g++
CFLAGS=-g
SFML=./libraries/SFML-2.4.2
DOXYGEN=./tools/doxygen-1.8.13
SRC=./src

all: dodge tests doc
    
dodge: main.o
	$(CXX) $(CFLAGS) main.o -o dodge -L $(SFML)/lib -lsfml-graphics -lsfml-window -lsfml-system

tests: tests.o
	$(CXX) $(CFLAGS) tests.o -o tests -L $(SFML)/lib -lsfml-graphics -lsfml-window -lsfml-system

%.o: $(SRC)/%.cpp
	$(CXX) $(CFLAGS) -c $< -I $(SFML)/include
	
run: dodge
	export LD_LIBRARY_PATH=$(SFML)/lib && ./dodge

test: tests
	export LD_LIBRARY_PATH=$(SFML)/lib && ./tests

doc:
	$(DOXYGEN)/bin/doxygen doxygen_cfg

clean:
	rm -fr *.o tests dodge dodge-man-doc

sfml:
	cd $(SFML); cmake ./ -DCMAKE_CXX_COMPILER=gcc
	cd $(SFML); make all
