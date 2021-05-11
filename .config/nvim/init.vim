set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set exrc
set relativenumber
set mouse=a
set nohlsearch
set hidden
set noerrorbells
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=10
set colorcolumn=80
set signcolumn=yes
set backspace=indent,eol,start

" remaps visual block mode
nnoremap cv <C-v>
" remaps to facilitate copying and pasting to clipboard
nnoremap <C-c> "+y
vnoremap <C-c> "+y
nnoremap <C-v> "+gP
vnoremap <C-v> "+gP

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'luochen1990/rainbow'
Plug 'Raimondi/delimitMate'
Plug 'mattn/emmet-vim'
call plug#end()

colorscheme gruvbox

" for css language server to recognise scss
autocmd FileType scss setl iskeyword+=@-@
so $HOME/.config/nvim/plug-config/coc.vim

" remap fzf trigger
nnoremap <silent> <C-p> :Files<CR>

" remap ripgrep
nnoremap <silent> <C-f> :Rg<CR>

" Makes Jenkinsfile look like groovy file to nvim
autocmd BufRead,BufNewFile Jenkinsfile set ft=groovy

" set rainbow parentheses
let g:rainbow_active = 1

" auto completion for closing html tags
set omnifunc=htmlcomplete#CompleteTags

" auto delete trailing white spaces
autocmd BufWritePre * %s/\s\+$//e
