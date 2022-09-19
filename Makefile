
sdl2Path = C:/SDL2-w64x
ooArgs = -L C:/SDL2-w64/lib -lmingw32 -lSDL2main -lSDL2 -lSDL2_image
includeArgs = -I include -I C:/SDL2-w64/include

default:
	g++ -c src/*.cpp -std=c++14 -O3 -Wall -m64 $(includeArgs) && g++ *.o -o bin/release/main -s $(ooArgs) && xcopy /E /I res bin\release\res && start bin/release/main
	
	
debug:
	g++ -c src/*.cpp -std=c++14 -g -Wall -m64 $(includeArgs) && g++ *.o -o bin/debug/main -s $(ooArgs) && xcopy /E /I res bin\debug\res && start bin/debug/main
	

