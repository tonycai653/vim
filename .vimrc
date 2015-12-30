"Enable Syntax Highlighting
filetype off
filetype plugin indent on
syntax on

" automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

"set leader
let mapleader=","


"easier moving between tabs
map <Leader>p <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

"quick quit
noremap <Leader>e :q<CR> "quit current window
noremap <Leader>E :qa!<CR> "quit all windows

"quick open .vimrc file
noremap <Leader>my :e $MYVIMRC<CR>


" Bind Ctrl+<movement> to move around windows instead of Ctrl+w + <movement> 
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h


"easier moving of code blocks
vnoremap < <gv   " better indentation
vnoremap > >gv   " better indentation

" Showing line numbers and line length
set number " show line number
set tw=79  " with of document (used by gd)
set nowrap " don't automatically wrap on load
set fo-=t  " don't automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233

"Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

"make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase


" Disable stupid backup and swap files - they trigger too many events for file
" sytem watchers
set nobackup
set nowritebackup
set noswapfile

" Color scheme
set t_Co=256
colorscheme wombat256mod


" Using Vundle (Vim bundle) for plugin management
set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'powerline/powerline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'klen/python-mode'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdtree'
call vundle#end()


"" settings for ctrlp
let g:ctrlp_max_height=30


" settings for NERDTree
noremap <leader>nt :NERDTreeToggle<CR>




" Settings for python-mode
map <Leader>g :call RopeGotoDefinition()<CR>
let ropevim_enable_shortcuts = 1
let g:pymode_rope_goto_def_newwin = "vnew"
let g:pymode_rope_extended_complete = 1
let g:pymode_breakpoint = 0
let g:pymode_syntax = 1
let g:pymode_syntax_builtin_objs = 0
let g:pymode_rope_completion = 1  "turn on code completion in the plugin
let g:pymode_syntax_builtin_funcs = 0
map <Leader>b Oimport ipdb; ipdb.set_trace()



" Code Folding
set nofoldenable
