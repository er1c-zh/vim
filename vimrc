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
"  open branch on airline
let g:airline#extensions#branch#enabled=1
let g:airline_section_b = '%{strftime("%m-%d %H:%M")} %{airline#util#wrap(airline#extensions#hunks#get_hunks(),100)}%{airline#util#wrap(airline#extensions#branch#get_head(),80)}'
let g:airline#extensions#tabline#enabled = 1

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" git gutter
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk

" markdown preview
"let g:instant_markdown_slow = 1
"let g:instant_markdown_autostart = 0
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_allow_external_content = 0
"let g:instant_markdown_mathjax = 1
"let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
"let g:instant_markdown_autoscroll = 0
"let g:instant_markdown_port = 8888
"let g:instant_markdown_python = 1

" ctags support markdown
let g:tagbar_type_markdown = {
            \ 'ctagstype' : 'markdown',
            \ 'kinds' : [
                \ 'h:headings',
                \ 'l:links',
                \ 'i:images'
            \ ],
    \ "sort" : 0
\ }
" use F4 to toggle tagbar
map <F4> :TagbarToggle<CR>

""""""""""""""""""""""
"vim cfg             "
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
"highlight CursorColumn cterm=NONE ctermbg=black ctermfg=green
"highlight CursorLine cterm=NONE ctermbg=black ctermfg=green

"revise delay time for git-gutter (ms)
set updatetime=250

"collopise
set fdm=syntax

"set tab width
set ts=4
"convert tab 2 space
set expandtab

""""""""""""""""""""""
"auto cmd            "
""""""""""""""""""""""
" change filetype for asm file to nasm
au BufRead,BufNewFile *.asm set filetype=nasm

""""""""""""""""""""""
" for colemak        "
""""""""""""""""""""""
" movement key
noremap n j
noremap N J
noremap <C-w>n <C-w>j
noremap e k
noremap E K
noremap <C-w>e <C-w>k
noremap i l
noremap I L
noremap <C-w>i <C-w>l

noremap k n
noremap K N
noremap l i
noremap L I
