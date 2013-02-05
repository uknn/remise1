remise1
=======

Compilation sur Linux
-----

- Installer le kit de développement SDL
    sudo apt-get install libSDL1.2-dev

- Compiler le fichier
    gcc -o afficher -I/usr/include/SDL afficher.c -lSDL

- Exécuter le programme
    ./afficher

Compilation sur Windows
------------------------

- Compiler le fichier
    PATH=%PATH%;C:\Program Files\Eiffel Software\EiffelStudio 7.1 GPL\gcc\windows\mingw\bin
    gcc -o afficher.exe -I.\SDL-1.2.14\include\SDL -L.\SDL-12.14\bin\ -L.\SDL-1.2.14\lib -lmingw32 afficher.c .\SDL-1.2.14\lib\libSDLmain.a  .\SDL-1.2.14\lib\libSDL.dll.a
	  afficher.exe
