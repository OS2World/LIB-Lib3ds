@echo off
cls
del *.dll
del *.lib
SET INCLUDE=D:\WATCOM\H;D:\WATCOM\H\OS2
SET INCLUDE=..\openil\include;%INCLUDE%
cls
wcl386 -i. -dUSE_OS2 -dLIB3DS_STATIC -zq -zp1 -bw -bt=os2 -e25 -w0 -d0 -3s -ox -c lib3ds\*.c
lib *.obj -out:lib3ds_s.lib -nologo
del *.obj
wcl386 -i. -dUSE_OS2 -d_MSC_VER -dLIB3DS_EXPORTS -zq -zp1 -bd -bt=os2 -e25 -w0 -d0 -3s -ox -l=os2v2_dll srcbeta\*.cpp lib3ds\*.c -"option implib"
del *.obj
del *.err