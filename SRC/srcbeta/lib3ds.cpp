#ifdef USE_OS2
#include <os2.h>

BOOL APIENTRY LibMain( HMODULE hmodDLL, ULONG ulTermination )
{
    if( ulTermination ) {
//        printf( "DLL is terminating.\n" );
    } else {
//        printf( "DLL is initializing.\n" );
    }
    return( 1 );    /* Indicate success */
}
#else
#include <windows.h>
/* Only needed for MSVC++ unless extended to actually do something =) */
BOOL APIENTRY DllMain(HANDLE hModule, DWORD ul_reason_for_call, LPVOID lpReserved)
{
	hModule;  ul_reason_for_call;  lpReserved;

	if (ul_reason_for_call == DLL_PROCESS_ATTACH) {
		//ilInit();
	}

	return TRUE;
}
#endif


