if exists('g:loaded_timer')
    finish
endif

let g:loaded_timer = 1

command! -nargs=0 Timer call Timer#start()
