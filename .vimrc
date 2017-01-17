" activates filetype detection
filetype plugin indent on

" activates syntax highlighting among other things
syntax on

" allows you to deal with multiple unsaved
" buffers simultaneously without resorting
" to misusing tabs
set hidden

" just hit backspace without this one and
" see for yourself
set backspace=indent,eol,start

" line numbers
set number

" Tabs from stackoverflow
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Saving with F2
inoremap <F2> <Esc>:w<Enter>i<Right>
nnoremap <F2> :w<Enter>

" Other useful things
set autoindent

" For JS vim
" set regexpengine=1
syntax enable
