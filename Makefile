CC=sdcc-sdcc

all: main

main:
	$(CC) -mmcs51 -V --std-sdcc99 main.c -o toggle_pin.hex

clean:
	rm -rf toggle_pin*
