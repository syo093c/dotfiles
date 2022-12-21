
"------------------------------------------------------------------------------
"place to put command

"hex
"%!xxd

"------------------------------------------------------------------------------
call plug#begin()
	Plug 'google/vim-maktaba'
	Plug 'google/vim-codefmt'
    Plug 'vim-syntastic/syntastic'
	Plug 'rust-lang/rust.vim'
    Plug 'vim-airline/vim-airline'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

syntax enable
filetype plugin indent on

let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t' " Show just the filename

let mapleader ="\<Space>"
" -----------Buffer Management---------------
set hidden " Allow buffers to be hidden if you've modified a buffer
" Move to the next buffer
nmap <leader>l :bnext<CR>
" Move to the previous buffer
nmap <leader>h :bprevious<CR>
" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>q :bp <BAR> bd #<CR>
" Show all open buffers and their status
nmap <leader>bl :ls<CR>

" Coc.nvim
" https://github.com/neoclide/coc.nvim
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

set cmdheight=2
set updatetime=300
"------------------------------------------------------------------------------
" from centOS
set nocompatible
set bs=indent,eol,start         " allow backspacing over everything in insert mode
"set ai                 " always set autoindenting on
"set backup             " keep a backup file
set viminfo='20,\"50    " read/write a .viminfo file, don't store more
                        " than 50 lines of registers
set history=50          " keep 50 lines of command line history
set ruler               " show the cursor position all the time

" Disable the default Vim startup message.
set shortmess+=I
"------------------------------------------------------------------------------

"colorscheme elflord
"colorscheme ron

syntax on
"set si
set ai
set title

"move
"move at crawped line
"noremap <CJ> gj
"noremap <CK> gk

"Tab2space
set expandtab
set tabstop=4
set shiftwidth=4

"Wrap Line Length
set colorcolumn=80
"for 256 color terminal,237 or 18
highlight ColorColumn ctermbg=237

"visual support
set nu
"set cuc
"set cul

"search
set hlsearch
" Enable searching as you type, rather than waiting till you press enter.
set incsearch

"replace visual assistant
if exists('&inccommand')
  set inccommand=split
endif

"for security
set secure
set nomodeline
set modelines=0

"utf8
set encoding=utf-8

" show search match count
set shortmess-=S

" Status Line Settings (borrow from hikalium)
set statusline=%F " Show file name
set statusline+=%m " Show modification
set statusline+=%r " Show if readonly
set statusline+=%= " align right after this
set statusline+=\ %y[%{&fileencoding}] " file encoding
set statusline+=[%{&ff}] " file format (dos/linux)
set statusline+=[%p%%][%L][line:%05l,col:%02v] " percentage, line, col

set laststatus=2 " Show status line (0:never, 1:two or more windows, 2:always)

"relativenumber
"set relativenumber

"dictionary
set dictionary+=/usr/share/dict/words

"auto reload
set autoread

"split
set splitbelow
set splitright
