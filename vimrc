set nocompatible
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set hlsearch
set backup
set undofile
set undodir=~/.vim/undo
set scrolloff=1
set nostartofline
set mouse=a
set nowrap
set ignorecase
set smartcase
set showcmd
set showmatch
set history=1000
set wildmenu
set wim=longest:full,full
set wildignore=*.docx,*.we*,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.svg,*.flv,*.img,*.xlsx
set clipboard=unnamedplus
set background=dark

cnoremap <expr> '<,'>normal gc 'normal gc'
nnoremap <A-/> :normal gcc<CR>
vnoremap <A-/> :normal gc<CR>





syntax on
filetype on
filetype plugin indent on
