""""""""""""""""""""""
"activite vundle
""""""""""""""""""""""
if filereadable(expand("~/.vimrc.bundles"))
source ~/.vimrc.bundles
endif

""""""""""""""""""""""
"plugins cfg
""""""""""""""""""""""
" nerd tree
map <F3> :NERDTreeToggle<CR>

" airline
set t_Co=256
set laststatus=2
set lazyredraw
let g:airline_powerline_fonts=1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

""""""""""""""""""""""
"vim cfg
""""""""""""""""""""""
"open syntax highlight
syntax on
"show line number
set number
highlight LineNr ctermfg=yellow
"open smartindent
set smartindent
"highlight line and row under cursor
set cursorcolumn
set cursorline
highlight CursorColumn cterm=NONE ctermbg=black ctermfg=green
highlight CursorLine cterm=NONE ctermbg=black ctermfg=green
""""""""""""""""""""""
"auto cmd
""""""""""""""""""""""
" change filetype for asm file to nasm
au BufRead,BufNewFile *.asm set filetype=nasm
