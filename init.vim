call plug#begin('~/.local/share/nvim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'mhartington/oceanic-next'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jalvesaq/vimcmdline'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'tpope/vim-fugitive'
call plug#end()

if (has("termguicolors"))
  set termguicolors
endif

" Theme
syntax enable
colorscheme OceanicNext
let g:airline_theme='oceanicnext'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

let maplocalleader = ","

set cursorline

set hidden

set tabstop=4
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
au FileType py setl sw=4 sts=0 tabstop=4 et smarttab
au BufRead,BufNewFile *.c set noexpandtab
au BufRead,BufNewFile *.h set noexpandtab

" map window switching to single C-x key
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" copy to system clipboard
vnoremap <C-c> "+y

nnoremap <C-n> :bnext<CR>
nnoremap <C-b> :bprevious<CR>
nnoremap <C-w> :bd<CR>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
"
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Use deoplete.
let g:deoplete#enable_at_startup = 1

let cmdline_map_send           = '<Space>'

" vimcmdline mappings
let cmdline_map_start          = '<LocalLeader>s'
let cmdline_map_send           = '<Space>'
let cmdline_map_send_and_stay  = '<LocalLeader><Space>'
let cmdline_map_source_fun     = '<LocalLeader>f'
let cmdline_map_send_paragraph = '<LocalLeader>p'
let cmdline_map_send_block     = '<LocalLeader>b'
let cmdline_map_quit           = '<LocalLeader>q'

" vimcmdline options
let cmdline_vsplit      = 1      " Split the window vertically
let cmdline_esc_term    = 1      " Remap <Esc> to :stopinsert in Neovim's terminal
let cmdline_in_buffer   = 1      " Start the interpreter in a Neovim's terminal
let cmdline_term_height = 15     " Initial height of interpreter window or pane
let cmdline_term_width  = 80     " Initial width of interpreter window or pane
let cmdline_tmp_dir     = '/tmp' " Temporary directory to save files
let cmdline_outhl       = 1      " Syntax highlight the output
let cmdline_app         = {}
let cmdline_app['python'] = 'ipython3'

