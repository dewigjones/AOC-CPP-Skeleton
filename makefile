CPPFLAGS := -std=gnu++17
DEBUGFLAGS := -g -O0

CURDAY := Day$(shell date +%d).cpp
ALLDAYS := $(wildcard ./src/*)
SPECIFICDAY := Day$(AOCDAY).cpp
DEFAULTOUT := build/$(wildcard *)

define HEADER
  *  *  *  (•^•)   *  *  *
*  *   *-(       )-* *    *
*   *   (         ) *  * *  *
endef

export HEADER

snow:= $(shell ./snow.sh)

all:
	@echo "Making all..."
	clang++ $(CPPFLAGS) $(ALLDAYS)
	mv *.out build

today:
	@echo "Making and running today (ho ho ho)..."
	@./snow.sh
	@echo "$$HEADER"
	clang++ $(CPPFLAGS) ./src/$(CURDAY) -o ./build/out
	chmod +x ./build/out
	./build/out

specific:
	@echo "Making and running day $(AOCDAY) (ho ho ho)..."
	@./snow.sh
	@echo "$$HEADER"
	clang++ $(CPPFLAGS) ./src/$(SPECIFICDAY) -o ./build/out
	chmod +x ./build/out
	./build/out

bah-humbug:
	@echo "Bah humbug! Debugging today..."
	clang++ $(CPPFLAGS) $(DEBUGFLAGS) ./src/$(CURDAY) -o ./build/out
	chmod +x ./build/out
	gdb ./build/out

bah-humbug-specific:
	@echo "Bah humbug! Debugging day $(AOCDAY)..."
	clang++ $(CPPFLAGS) $(DEBUGFLAGS) ./src/$(SPECIFICDAY) -o ./build/out
	chmod +x ./build/out
	gdb ./build/out

clean:
	@echo "Canceling Christmas! Cleaning..."
	rm -rf build
	mkdir build

