exec = hello.out
sources = $(wildcard src/*.c)
objects = $(sourcs:.c=.o)
flags = -g

$(exec): $(objects)
	gcc $(objects) $(flags) -o $(exec)

%.o: %.c include/%.h
	gcc -c $(flags) $< -o $@

install:
	make
	cp ./RafL /usr/local/bin/RafL

clean:
	-rm *.out
	-rm *.o
	-rm src/*.o