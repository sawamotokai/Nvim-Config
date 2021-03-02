"I hate esc!
imap jj <Esc>
let mapleader = "\<Space>"

" disable arrow keys
noremap <UP> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>


"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" traverse buffer list
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

"other keymaps
nnoremap Y y$ 
"Copy all to clipboard
nnoremap <C-y> gg"*yG 
" Use esc to exit insert mode in :term
tnoremap <Esc> <C-\\><C-n>

set number
set nu rnu

set encoding=UTF-8
syntax on

" some option settings
set splitbelow
set splitright
set ruler
set showcmd
set noswapfile
set noshowmode
" set omnifunc=syntaxcomplete#Complete
set backspace=indent,eol,start          " let backspace delete over lines
" set autoindent                          " enable auto indentation of lines
set smartindent                         " allow vim to best-effort guess the indentation
set nowrap                              " Display long lines as just one line
set pumheight=10                        " Makes popup menu smaller
set t_Co=256                            " Support 256 colors
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
" set autoindent                          " Good auto indent
set laststatus=2                        " Always display the status line
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set noautoindent
filetype indent off


" Theme
set cursorline
" hi CursorLine term=bold cterm=bold guibg=Grey
" highlight Comment cterm=italic gui=italic
" set guifont=Fira\ Code\ Nerd\ Font

" run code
" nnoremap \ <C-w>s:te<enter>
autocmd filetype python nnoremap <f5> :w <bar> :!python3 % <cr>
autocmd filetype cpp nnoremap <f4> :w <bar> !g++ -std=c++17 % -o %:r && ./%:r < in <cr>
autocmd filetype cpp nnoremap <f5> :w <bar> !./a.out < in <cr>
autocmd filetype c nnoremap <f5> :w <bar> !make %:r && ./%:r <cr>
autocmd filetype java nnoremap <f5> :w <bar> !javac % && java %:r <cr>"
