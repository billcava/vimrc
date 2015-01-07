" Syntax highlighting
syntax on

" Use indents of 4 spaces
set shiftwidth=4               

" An indentiation every four columns
set tabstop=4

" Let backspace delete indent 
set softtabstop=4

" Enable line numbers
set number

" Store a lot of history, default is 20
set history=1000

" Enable spell checking
set spell

" Backups are good
set backup

" Set directories for backups
set backupdir=$HOME/.vim/.vimbackup/

" Set directories for swap file
set directory=$HOME/.vim/.vimswap/

" Copy indent from current line when starting a new line 
set autoindent
filetype plugin indent on

" Highlight all search matches
set hlsearch

" If editing a crontab, need in-place editing
autocmd FileType crontab setlocal nowritebackup
