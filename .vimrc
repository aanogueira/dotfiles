" Filetype detection
filetype on
filetype plugin on
filetype indent on " file type based indentation

" Indention Options
set autoindent
set expandtab
set shiftround
set shiftwidth=2
set smarttab
set tabstop=2
set ruler
set hlsearch
set ai

" Search Options
set ignorecase
set smartcase

" Performance Options
set lazyredraw

" Text Rendering Options
set encoding=utf-8
set wrap
syntax on

" User Interface Options
set number
set noerrorbells
set mouse=a
set title
set background=dark

" Code Folding Options
" set foldmethod=indent

" Miscellaneous Options
set autoread
" set spell
set backupdir=~/.cache/vim
set dir=~/.cache/vim
set confirm
set history=1000
set noswapfile
set nrformats-=octal

" Theme
colorscheme peachpuff
highlight Comment ctermfg=green

" for C-like  programming where comments have explicit end
" characters, if starting a new line in the middle of a comment automatically
" insert the comment leader characters:
autocmd FileType c,cpp,java set formatoptions+=ro
autocmd FileType c set omnifunc=ccomplete#Complete

" fixed indentation should be OK for XML and CSS. People have fast internet
" anyway. Indentation set to 2.
autocmd FileType html,xhtml,css,xml,xslt set shiftwidth=2 softtabstop=2

" two space indentation for some files
autocmd FileType vim,lua,nginx set shiftwidth=2 softtabstop=2

" for CSS, also have things in braces indented:
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

" add completion for xHTML
autocmd FileType xhtml,html set omnifunc=htmlcomplete#CompleteTags

" add completion for XML
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags

" in makefiles, don't expand tabs to spaces, since actual tab characters are
" needed, and have indentation at 8 chars to be sure that all indents are tabs
" (despite the mappings later):
autocmd FileType make set noexpandtab shiftwidth=4 softtabstop=0

" ensure normal tabs in assembly files
" and set to NASM syntax highlighting
autocmd FileType asm set noexpandtab shiftwidth=8 softtabstop=0 syntax=nasm

