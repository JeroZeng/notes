# xcrun -sdk iphoneos clang asm.c -arch armv7 -c
# xcrun -sdk iphoneos clang asm.c -arch armv7 -S # generate assembly code
# ar rcs libasm.a asm.o 

all:
	xcrun -sdk iphoneos clang asm.c -arch armv7 -c
	ar rcs libasm.a asm.o

add:
	xcrun -sdk iphoneos clang add.S -arch armv7 -c
	ar rcs libadd.a add.o

clean:
	rm *.o
	rm *.a
