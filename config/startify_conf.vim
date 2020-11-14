let s:startify_ascii_header = [
 \ ' 888b    888                  888     888 d8b               ',
 \ ' 8888b   888                  888     888 Y8P               ',
 \ ' 88888b  888                  888     888                   ',
 \ ' 888Y88b 888  .d88b.   .d88b. Y88b   d88P 888 88888b.d88b.  ',
 \ ' 888 Y88b888 d8P  Y8b d88""88b Y88b d88P  888 888 "888 "88b ',
 \ ' 888  Y88888 88888888 888  888  Y88o88P   888 888  888  888 ',
 \ ' 888   Y8888 Y8b.     Y88..88P   Y888P    888 888  888  888 ',
 \ ' 888    Y888  "Y8888   "Y88P"     Y8P     888 888  888  888 ',
 \ '                                                            ',
 \ '                                                            ',
 \ '                                                            ',
 \ '',
 \]
let g:startify_custom_header = map(s:startify_ascii_header +
        \ startify#fortune#quote(), '"   ".v:val')
let g:startify_session_dir = '~/.vim/session/'
let g:startify_lists = [
      \ { 'type': 'files',     'header': ['   MRU']            },
      \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ { 'type': 'commands',  'header': ['   Commands']       },
      \ ]
let g:startify_session_autoload = 1
let g:startify_session_persistence = 1
let g:startify_relative_path =1
let g:webdevicons_enable_startify = 0

function! StartifyEntryFormat()
    return 'WebDevIconsGetFileTypeSymbol(entry_path) ."  ". entry_path'
endfunction
