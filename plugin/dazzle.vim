if exists('g:loaded_dazzle') | finish | endif
let g:loaded_dazzle = 1

command Dazzle call dazzle#present#start()
