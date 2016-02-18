npx: nanopond-2.0.c
	gcc --verbose 									\
		-Wall									\
		-O3 -msse2 nanopond-2.0.c -o npx					\
		`${HOME}/nanopond2/build/sdl-config --cflags --libs`	

clean:
	rm -f ./npx

test:  npx
	/usr/bin/time ./npx
		

