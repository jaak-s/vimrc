filetype plugin indent on

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'tomasr/molokai'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'dyng/ctrlsf.vim'
call plug#end()

syntax on

set relativenumber

set cursorline

set hidden
set tabstop=8
set shiftwidth=4
set softtabstop=0
set expandtab
set autoindent          " copy indent from current line when starting a new line
set smarttab
set smartindent
set nosmartindent

set pastetoggle=<F2>

autocmd FileType cpp setlocal shiftwidth=2 tabstop=2 sts=2
au FileType python setl sw=4 sts=0 tabstop=8 et
au FileType py setl sw=4 sts=0 tabstop=8 et
au BufRead,BufNewFile *.c set noexpandtab
au BufRead,BufNewFile *.h set noexpandtab

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

colorscheme molokai

set wildmode=longest,list,full
set wildmenu
" vim:fdm=marker

""" mouse support
" Editor basics {{{
" Behave like Vim instead of Vi
set nocompatible

" Show a status line
set laststatus=2

" Show the current cursor position
set ruler

" Enable syntax highlighting
syn on
" }}}
" Mouse {{{
" Send more characters for redraws
set ttyfast

" Enable mouse use in all modes
set mouse=a

" Set this to the name of your terminal that supports mouse codes.
" Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set ttymouse=xterm2
" }}}
" Disable arrow keys {{{
"noremap  <Up>     <NOP>
"inoremap <Down>   <NOP>
"inoremap <Left>   <NOP>
"inoremap <Right>  <NOP>
"noremap  <Up>     <NOP>
"noremap  <Down>   <NOP>
"noremap  <Left>   <NOP>
"noremap  <Right>  <NOP>
" }}}

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" copy to system clipboard
vnoremap <C-c> "+y

au VimEnter * if &diff | execute 'windo set wrap' | endif

"ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Setup some default ignores
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|o|dll|class|png|jpg|jpeg)$',
\}

" Use the nearest .git directory as the cwd
" This makes a lot of sense if you are working on a project that is in version
" control. It also supports works with .svn, .hg, .bzr.
let g:ctrlp_working_path_mode = 'r'

" Use a leader instead of the actual named binding
nmap <leader>p :CtrlP<cr>

" Easy bindings for its various modes
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bh :CtrlPMRU<cr>

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='dark'
"
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
nnoremap <C-n> :bnext<CR>
nnoremap <C-b> :bprevious<CR>
nnoremap <C-2> :bnext<CR>
nnoremap <C-1> :bprevious<CR>
nnoremap <C-w> :bd<CR>

" fugitive
set diffopt+=vertical

" starting NERDTree if empty vim
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" NERDTree shortcut
map <C-m> :NERDTreeFind<CR>


" allowing project specific .vimrc 
set exrc 
set secure 
