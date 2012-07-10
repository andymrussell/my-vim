set nocompatible               " be iMproved
set ruler
set nowrap
set number
set ignorecase
set smartcase
set incsearch
set hlsearch
set title
set tabstop=4
set shiftwidth=4
let g:MouseOption = 0
se mouse=a
set bg=dark
"function ToggleMouse()
"	if g:MouseOption != 1
"		let g:MouseOption = 1
"		set mouse=
"	else
"		let g:MouseOption = 0
"		set mouse=nv
"	endif
"endfunction

if has('gui_running')
	" GUI colors
	colorscheme desert
	set cursorcolumn=n-c-v:ver50-ncvCursor
endif


au BufNewFile,BufRead *.inc,*.x set filetype=php
autocmd BufWritePost    *.php,*.inc,*.x          !(php -l <afile>)
filetype off                   " required!
syntax on



set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundles (Vundle) to load
Bundle 'gmarik/vundle'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'scrooloose/nerdtree'
Bundle 'msanders/snipmate.vim'
Bundle 'vim-scripts/PDV--phpDocumentor-for-Vim'

filetype plugin on
filetype plugin indent on     " required! 

"Mapping for useful shortcuts
nmap <silent> <c-n> :NERDTreeToggle<CR>
"nmap <silent> <c-f> :FuzzyFinder<CR>

"PHP Commenting
"source = ~/.vim/bundle/PDV--phpDocumentor-for-Vim/plugin/php-doc.vim
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i 
nnoremap <C-P> :call PhpDocSingle()<CR> 
vnoremap <C-P> :call PhpDocRange()<CR> 

"noremap <C-M> :call ToggleMouse()<CR>
"inoremap <C-M> <Esc>:call ToggleMouse()<CR>a




