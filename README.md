# Advent of Code C++ Skeleton

This is a fun AoC skeleton for C++, containing a makefile with arguments to compile or debug the current day or a specific day's file. It also prints a snowman with randomly generated snow to stdout when compiling. ☃️

## Using the Skeleton
Make a `src`, `res` and `build` folder. Put your source files in the `src` directory with the name `DayX.cpp` where `X` is the 2 digit number for the day e.g. `Day02.cpp`. Put any resources (e.g. text files) in the `res` directory. Your code will be compiled to the `build` directory. 

To compile and run your code use `make` with one of the following arguments:

* `all` - Compile all days
* `today` - Compile and run the current day
* `specific` - Compiles and runs the day specified by the `AOCDAY` environment variable (use `export AOCDAY=X` to set this where X is the 2 digit day code)
* `bah-humbug` - Debug the current day using gdb with the `-O0` flag
* `bah-humbug-specific` - Debug the day specified by the `AOCDAY` environment variable in gdb (use `export AOCDAY=X` to set this where X is the 2 digit day code)
* `clean` - remove everything in the build directory
