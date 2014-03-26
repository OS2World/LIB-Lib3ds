@echo off
cls
echo making LIB3DS.OBJ
cd srcbeta
icc /DLIB3DS_EXPORTS /D_WIN32 /D_MSC_VER /DUSE_OS2 -Sp1 -Ge- -Ft- -Q+ -O- /W1 /Ms lib3ds.cpp *.c /B"/NOLOGO /DLL /NOI  /st:200000 /exepack:2 /packd /optfunc"
cd .. 
echo making LIB3DS.LIB
implib /nologo LIB3DS.LIB srcbeta\LIB3DS.DLL
