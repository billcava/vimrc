" Syntax highlighting
syntax on

" Use indents of 4 spaces
set shiftwidth=4               

" An indentation every four columns
set tabstop=4

" Let backspace delete indent 
set softtabstop=4

" Insert space characters whenever the tab key is pressed
set expandtab

" Enable line numbers
set number

" Store a lot of history, default is 20
set history=1000

" Enable spell checking
" set spell

" Set color of highlighted misspelled word?
" hi SpellBad guibg=#ff2929 ctermbg=224
" hi SpellBad ctermfg=015 ctermbg=000 cterm=none guifg=#FFFFFF guibg=#000000 gui=none

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
" http://vim.wikia.com/wiki/Editing_crontab
autocmd FileType crontab* setlocal nowritebackup
autocmd BufEnter /private/tmp/crontab.* setl backupcopy=yes
