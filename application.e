note
	description : "programme qui affiche un jpeg nowhere"
	date        : "31/01/2013"
	revision    : "1.02345"
	auteur		: "Samuel Forcier & David Lafrenière"

class
	APPLICATION

inherit
	ARGUMENTS

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		local
			-- Variables Utiles
			l_screen, l_targetarea, l_null:POINTER
			l_caca:INTEGER
			l_bmp:BMP

		do
			--Initialiser la librairie
			l_caca := {SDL_Wrapper}.SDL_Init({SDL_Wrapper}.SDL_INIT_VIDEO)

			--Charger l'image test.bmp dans un SDL_Surface
			create l_bmp.make ("test.bmp")

			--Initialiser la fenetre
			l_screen := {SDL_Wrapper}.SDL_SetVideoMode(l_bmp.w,l_bmp.h,32,{SDL_Wrapper}.SDL_SWSURFACE)

			l_targetarea:=l_targetarea.memory_calloc ({SDL_WRAPPER}.sizeof_SDL_Rectum,1)

			--Coordonnees de l'image dans la fenetre
			{SDL_Wrapper}.set_x_from_SDL_Rect(l_targetarea,0)

			{SDL_Wrapper}.set_y_from_SDL_Rect(l_targetarea,0)

			{SDL_Wrapper}.set_w_from_SDL_Rect(l_targetarea,l_bmp.w.to_natural_16)

			{SDL_Wrapper}.set_h_from_SDL_Rect(l_targetarea,l_bmp.h.to_natural_16)

			--Place l'image sur la fenetre
			l_caca := {SDL_Wrapper}.SDL_BlitSurface(l_bmp.ptr,l_null,l_screen,l_targetarea)

			--Met la fenetre a jour (double buffer)
			l_caca := {SDL_Wrapper}.SDL_Flip(l_screen)

			--Attend avant de terminer l'application
			{SDL_Wrapper}.SDL_Delay(2000)

			l_targetarea.memory_free

		end

end
