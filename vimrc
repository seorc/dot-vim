runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

" For details on keeping this config up to date with git, see:
" http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/

"
" BASIC SETTINGS
"

set ai
set nu
set ts=4
set sw=4
set encoding=utf-8
set nobackup
set showmode
set showmatch
set hlsearch
set textwidth=79

" folding settings
set foldmethod=indent
"set foldlevel=2
set foldnestmax=1
nnoremap <space> za


filetype on
filetype plugin on
filetype plugin indent on


"
" FILE TYPE RELATED SETTINGS
"

" use spaces istead of \t for py files (following PEP-8)
au VimEnter *.py,*.rst set expandtab

" highlight lines longer than 79 chars, when programming
au VimEnter *.py,*.js,*.php let w:m2=matchadd('ErrorMsg', '\%>79v.\+', -1)

" prevent text wrapping in programming langages
au VimEnter *.py,*.js,*.php,*.html set textwidth=0

"let g:SuperTabDefaultCompletionType = "context"
"au FileType python set omnifunc=pythoncomplete#Complete
"set completeopt=menuone,longest,preview

" possible usseful settings
"au VimEnter *.py,*.js,*.php let w:m1=matchadd('Search', '\%<80v.\%>75v', -1)
"au VimEnter *.txt set wrapmargin=10
"au VimEnter *.txt,*.rst,* set textwidth=79


filetype on
filetype plugin on
filetype plugin indent on

" enshure filetype is on
"au VimEnter *.py,*.php,*.html filetype on
"au VimEnter *.py,*.php,*.html filetype plugin indent on

" define auto-continuation of comments for javascript and php
au FileType javascript,php setl fo+=cro

" enable language auto-indentation for specific filetypes
"au FileType php filetype indent on

"
" PLUGIN RELATED SETTINGS
"

" to run python PEP8 validation on the current code
let g:pep8_map='<leader>8'

"
" KEY MAPPINGS
"

" map to show TODOs
map <leader>td <Plug>TaskList

" to change between windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" provide mappings for moving lines arround
"nnoremap <C-m> :m-2<CR>==
"vnoremap <C-m> :m-2<CR>gv=gv
"inoremap <C-m> <Esc>:m-2<CR>==gi
"nnoremap <C-n> :m+<CR>==
"vnoremap <C-n> :m'>+<CR>gv=gv
"inoremap <C-n> <Esc>:m+<CR>==gi
