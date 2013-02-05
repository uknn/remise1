note
	description: "Wrapper librairie SDL"
	author: "SAmuel Forcier & David Lafrenière"
	date: "31/01/2013"
	revision: "1.09826"

class
	SDL_WRAPPER

feature

	-- Wrapper librairie SDL

	frozen SDL_init (flags: NATURAL_32): INTEGER
		external
			"C (Uint32):int | <SDL.h>"
		alias
			"SDL_Init"
		end

	frozen SDL_init_video: NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_INIT_VIDEO"
		end

	frozen SDL_LoadBMP(file: POINTER): POINTER
		external
			"C (const char *):SDL_Surface * | <SDL.h>"
		alias
			"SDL_LoadBMP"
		end

	frozen SDL_SetVideoMode(width, heigth, bitsperpixel: INTEGER; flags: NATURAL_32): POINTER
		external
			"C (int,int,int,Uint32):SDL_Surface * | <SDL.h>"
		alias
			"SDL_SetVideoMode"
	 	 end

	 frozen SDL_SWSURFACE: NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SWSURFACE"
		end

	 frozen SDL_BlitSurface(src,srcect,dst,dstrect:POINTER):INTEGER
	 	external
	 		"C (SDL_Surface *, SDL_Rect *, SDL_Surface *, SDL_Rect *): int | <SDL.h>"
	 	alias
	 		"SDL_BlitSurface"
	 	end

	 frozen SDL_Flip(screen:POINTER):INTEGER
	 	external
	 		"C (SDL_Surface*):int | <SDL.h>"
	 	alias
	 		"SDL_Flip"
	 	end

	 frozen SDL_Delay(ms:NATURAL_32)
	 	external
	 		"C (Uint32) | <SDL.h>"
	 	alias
	 		"SDL_Delay"
	 	end

feature -- Structure Setter h SDL_Surface- SDL.h

	frozen set_h_from_SDL_Surface (SDL_Surface:POINTER;value: INTEGER)
			-- Modifie le champ err la structure C `SDL_Surface' par la valeur `value'.
		external
			"C [struct <SDL.h>] (SDL_Surface, int)"
		alias
			"h"
		end

feature -- Structure Setter w SDL_Surface- SDL.h

	frozen set_w_from_SDL_Surface (SDL_Surface :POINTER;value: INTEGER)
			-- Modifie le champ err la structure C `SDL_Surface' par la valeur `value'.
		external
			"C [struct <SDL.h>] (SDL_Surface, int)"
		alias
			"w"
		end

feature -- Structure Getter h SDL_Surface- SDL.h

	frozen get_h_from_SDL_Surface (SDL_Surface:POINTER):INTEGER
			-- Le champ image_height de la structure `SDL_Surface'
		external
			"C [struct <SDL.h>] (struct SDL_Surface):int"
		alias
			"h"
		end

feature -- Structure Getter w SDL_Surface- SDL.h

	frozen get_w_from_SDL_Surface (SDL_Surface:POINTER):INTEGER
			-- Le champ image_width de la structure `SDL_Surface'
		external
			"C [struct <SDL.h>] (struct SDL_Surface):int"
		alias
			"w"
		end

feature -- Structure Setter x SDL_Rect - SDL.h

	frozen set_x_from_SDL_Rect (SDL_Rect:POINTER;value: INTEGER_16)
			-- Modifie le champ err la structure C `SDL_Rect' par la valeur `value'.
		external
			"C [struct <SDL.h>] (SDL_Rect, Sint16)"
		alias
			"x"
		end

feature -- Structure Setter y SDL_Rect - SDL.h

	frozen set_y_from_SDL_Rect (SDL_Rect:POINTER;value: INTEGER_16)
			-- Modifie le champ err la structure C `SDL_Rect' par la valeur `value'.
		external
			"C [struct <SDL.h>] (SDL_Rect, Sint16)"
		alias
			"y"
		end

		feature -- Structure Setter x SDL_Rect - SDL.h

frozen set_w_from_SDL_Rect (SDL_Rect:POINTER;value: NATURAL_16)
			-- Modifie le champ err la structure C `SDL_Rect' par la valeur `value'.
		external
			"C [struct <SDL.h>] (SDL_Rect, Uint16)"
		alias
			"w"
		end

feature -- Structure Setter y SDL_Rect - SDL.h

	frozen set_h_from_SDL_Rect (SDL_Rect:POINTER;value: NATURAL_16)
			-- Modifie le champ err la structure C `SDL_Rect' par la valeur `value'.
		external
			"C [struct <SDL.h>] (SDL_Rect, Uint16)"
		alias
			"h"
		end

feature -- Sizeof - SDL_Rectum

	frozen sizeof_SDL_Rectum:INTEGER
			-- La taille d'une structure SDL_Rectum en octet.
		external
			"C inline use <SDL.h>"
		alias
			"sizeof(struct SDL_Rect)"
		end



end
