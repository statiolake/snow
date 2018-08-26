let g:airline#themes#snow_light#palette = {}

let s:gry0 = [ "#ffffff", 231 ]
let s:gry1 = [ "#e8edf5", 255 ]
let s:gry3 = [ "#4c5768", 240 ]
let s:red_ = [ "#d14354", 167 ]
let s:gren = [ "#00842a", 28 ]
let s:blue = [ "#006ac8", 25 ]

let s:nrm1 = [ s:gry0[0] , s:gry3[0] , s:gry0[1] , s:gry3[1] ]
let s:nrm2 = [ s:gry3[0] , s:gry1[0] , s:gry3[1] , s:gry1[1] ]
let s:insr = [ s:gry0[0] , s:gren[0] , s:gry0[1] , s:gren[1] ]
let s:visl = [ s:gry0[0] , s:blue[0] , s:gry0[1] , s:blue[1] ]
let s:rplc = [ s:gry0[0] , s:red_[0] , s:gry0[1] , s:red_[1] ]
let s:inac = [ s:gry3[0] , s:gry1[0] , s:gry3[1] , s:gry1[1] ]

let g:airline#themes#snow_light#palette.normal =
  \ airline#themes#generate_color_map( s:nrm1 , s:nrm2 , s:nrm2 )

let g:airline#themes#snow_light#palette.insert =
  \ airline#themes#generate_color_map( s:insr , s:nrm2 , s:nrm2 )

let g:airline#themes#snow_light#palette.visual =
  \ airline#themes#generate_color_map( s:visl , s:nrm2 , s:nrm2 )

let g:airline#themes#snow_light#palette.replace =
  \ airline#themes#generate_color_map( s:rplc , s:nrm2 , s:nrm2 )

let g:airline#themes#snow_light#palette.inactive =
  \ airline#themes#generate_color_map( s:inac , s:inac , s:inac )

if !get(g:, "loaded_ctrlp", 0)
  finish
endif

let g:airline#themes#snow_light#palette.ctrlp =
  \ airline#extensions#ctrlp#generate_color_map( s:nrm2 , s:nrm1 , s:nrm2 )

