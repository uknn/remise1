note
	description: "Summary description for {BMP}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BMP

create
	make

feature {NONE} -- Constructeur

	make(a_chemin:STRING)
		local
			l_chemin_c:C_STRING
		do
			create l_chemin_c.make (a_chemin)
			ptr := {SDL_Wrapper}.SDL_LoadBMP(l_chemin_c.item)
		end

feature -- Acces

	h:INTEGER
		do
			Result:={SDL_WRAPPER}.get_h_from_SDL_Surface(ptr)

		end

	w:INTEGER
		do
			Result:={SDL_WRAPPER}.get_w_from_SDL_Surface(ptr)
		end


feature  -- Implementation

	ptr:POINTER

invariant
	Pointer_Not_Null: not ptr.is_default_pointer
end
