@echo off
del ogf*.exe
SET PATH=E:\WATCOM\BINNT;%PATH%
SET INCLUDE=E:\WATCOM\H;E:\WATCOM\H\OS2;..
cls
wcl386 -k2m -dUSE_GL10 -dUSE_OS2 -cc++ -zq -w1 -3r -bt=os2v2 -bw -ox -d0 -zp1 -bcl=os2v2 3dsply.cpp lib10\opengl.lib lib10\glut.lib lib\lib3ds.lib
ren 3dsply.exe 3dsply10.exe 
wcl386 -k2m -dUSE_OS2 -cc++ -zq -w1 -3r -bt=os2v2 -bw -ox -d0 -zp1 -bcl=os2v2 3dsply.cpp lib11\opengl.lib lib11\glut.lib lib\lib3ds.lib
ren 3dsply.exe 3dsply11.exe 
del *.obj
del *.err