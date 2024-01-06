rem Use this batch file to build MathExample for Visual Studio
rmdir /s /q build
mkdir build
cd build
cmake --fresh  ..
cmake --build .
start CtplExample.sln
