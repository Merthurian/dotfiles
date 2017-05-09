set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'git://github.com/sophacles/vim-processing.git'
Plugin 'git://github.com/scrooloose/nerdtree.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'gregsexton/MatchTag'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"Folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za
set foldmethod=indent

"UI
set number
set showcmd

"processing
function SaveMake()
	:wa
	:make
endfunction

nnoremap <F6> :exec SaveMake()<CR>
let g:processing_fold = 1


"NERDTree
nnoremap <F7> :NERDTree<CR>

"Tabs
nnoremap tn :tabnew<Space>
nnoremap th :tabprev<CR>
nnoremap tl :tabnext<CR>

set shiftwidth=2
set tabstop=2
