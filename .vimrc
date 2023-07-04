set nocompatible

 	set t_Co=256
 	let g:airline_theme = 'codedark'
 	colorscheme codedark

"+-- MOLOKAI_THEME {{{

"colorscheme molokai

"}}}"


filetype on
filetype plugin on
syntax enable
filetype indent on
syntax on
set number
hi LineNr cterm=NONE gui=NONE
set cursorline
" hi CursorLine cterm=NONE ctermbg=DarkGrey 
hi CursorLineNr cterm=bold gui=bold
set shiftwidth=4
set tabstop=4
set nobackup
set nowrap
set incsearch
set ignorecase
set showmode
set showmatch
set hlsearch
set termwinsize=12x0
set hidden
set statusline=0
set updatetime=1
set whichwrap=<,>,~,[,]
highlight CursorAutoHighlight ctermbg=237
let g:AutoHighlight_ClearOnCursorMoved = 1
let g:AutoHighlight_ClearOnWindowExit = 1
execute pathogen#infect()
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" PLUGINS ---------------------------------------------------------------- {{{

	call plug#begin('~/.vim/plugged')

		Plug 'https://github.com/preservim/nerdtree'
		Plug 'https://github.com/alvan/vim-closetag'
		Plug 'https://github.com/neoclide/coc-pairs'
		Plug 'https://github.com/zefei/vim-wintabs'
		Plug 'https://github.com/tpope/vim-commentary'
		Plug 'tomasiser/vim-code-dark'
		Plug 'lygaret/autohighlight.vim'

	call plug#end()

" }}}

" MAPPINGS --------------------------------------------------------------- {{{

	nnoremap E :wq<CR> 							
	nnoremap A :w<CR>
	nnoremap <C-f> :NERDTreeToggle<CR> 			 
	nnoremap <C-A> :bd<CR>
	tnoremap <C-Q> exit<CR>
	tnoremap <C-f> :NERDTreeToogle<CR>
	nnoremap <C-S> :vsplit<CR>
	map <C-P> <Plug>(wintabs_previous)
	map <C-N> <Plug>(wintabs_next)
	map <C-T>c <Plug>(wintabs_close)
	map <C-T>u <Plug>(wintabs_undo)
	map <C-T>o <Plug>(wintabs_only)
	map <C-W>c <Plug>(wintabs_close_window)
	map <C-W>o <Plug>(wintabs_only_window)
	command! Tabc WintabsCloseVimtab
	command! Tabo WintabsOnlyVimtab
	map <S-s> <Nop>
	map <S-v> <Nop>
	map <S-x> <Nop>
	inoremap " ""<left>
	inoremap ' ''<left>
	inoremap ( ()<left>
	inoremap [ []<left>
	inoremap { {}<left>
	inoremap {<CR> {<CR>}<ESC>O
	inoremap {;<CR> {<CR>};<ESC>O
	" nnoremap <C-y> "+y
	vmap <C-y> "+y
	" nnoremap <C-p> "+gP
	vmap <C-p> "+gP

" }}}

" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}

" STATUS LINE ------------------------------------------------------------ {{{


" }}}
