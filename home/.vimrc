" ┌───────────────────────────────────┐
" │             Start 			      │
" └───────────────────────────────────┘
" 先安装Vundle
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" :BundleInstall

" ┌───────────────────────────────────┐
" │             Shortcuts             │
" └───────────────────────────────────┘

let mapleader = ','

map <leader>. :bn<cr>
map <leader>m :bp<cr>
map <leader>w :w<cr>
map <leader>W :wq<cr>
map <leader>q :q<cr>
map <leader>Q :q!<cr>
" ┌───────────────────────────────────┐
" │              Vundle               │
" └───────────────────────────────────┘

set nocompatible              " 这是必需的 
filetype off                  " 这是必需的 
syntax on
set rtp+=~/.vim/bundle/Vundle.vim " 你在此设置运行时路径 
call vundle#begin() " vundle初始化 
 
Plugin 'gmarik/vundle'

Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdcommenter'
Plugin 'easymotion/vim-easymotion'
Plugin 'flazz/vim-colorschemes'
Plugin 'rhysd/conflict-marker.vim'
Plugin 'mileszs/ack.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'majutsushi/tagbar'

Plugin 'scrooloose/syntastic'
"Plugin 'Shougo/neocomplete.vim.git'
"Plugin 'Shougo/neosnippet'
"Plugin 'Shougo/neosnippet-snippets'
"Plugin 'honza/vim-snippets'

"Plugin 'spf13/PIV'

call vundle#end() " required 

" ┌───────────────────────────────────┐
" │             Setting 	    	  │
" └───────────────────────────────────┘
set nospell 
set encoding=utf-8
set nu "设置行号"
set mouse=a                 " Automatically enable mouse usage
set mousehide               " Hide the mouse cursor while typing
set hlsearch " 高亮搜索
set ignorecase "在搜索的时候忽略大小写
set nobackup " 取消自动备份file
set noswapfile " 取消自动备份swap
set nowrap                      " Do not wrap long lines
set autoindent                  " Indent at the same level of the previous line
set shiftwidth=4                " Use indents of 4 spaces
set expandtab                   " Tabs are spaces, not tabs
set tabstop=4                   " 制表符为4
set softtabstop=4               " Let backspace delete indent
set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)
set splitright                  " Puts new vsplit windows to the right of the current
set splitbelow                  " Puts new split windows to the bottom of the current
set clipboard=unnamed " 剪切板共享
set backspace=indent,eol,start " backspace的工作方式，解决退格键无法删除字符"
set paste "粘贴时保持格式

set selection=exclusive "允许区域选择
set selectmode=mouse,key "允许区域选择
set expandtab

colorscheme darkburn

filetype plugin indent on   " Automatically detect file types.

" ┌───────────────────────────────────┐
" │       Plugins customizations      │
" └───────────────────────────────────┘

" nerdtree
if isdirectory(expand("~/.vim/bundle/nerdtree"))
	map <C-e> :NERDTreeToggle<CR>
	map <leader>e :NERDTreeFind<CR>

	let NERDTreeShowBookmarks=1
	let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
	let NERDTreeChDirMode=0
	let NERDTreeQuitOnOpen=1
	let NERDTreeMouseMode=2
	let NERDTreeShowHidden=1
    let NERDTreeKeepTreeInNewTab=1
    let g:nerdtree_tabs_open_on_gui_startup=0
endif

" tagbar
if isdirectory(expand("~/.vim/bundle/tagbar/"))
    nnoremap <silent> <leader>tt :TagbarToggle<CR>
endif

" ack
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

" vim-fugitive
if isdirectory(expand("~/.vim/bundle/vim-fugitive"))
    nnoremap <silent> <leader>gs :Gstatus<CR>
    nnoremap <silent> <leader>gd :Gdiff<CR>
    nnoremap <silent> <leader>gc :Gcommit<CR>
    nnoremap <silent> <leader>gb :Gblame<CR>
    nnoremap <silent> <leader>gl :Glog<CR>
    nnoremap <silent> <leader>gp :Git push<CR>
    nnoremap <silent> <leader>gr :Gread<CR>
    nnoremap <silent> <leader>gw :Gwrite<CR>
    nnoremap <silent> <leader>ge :Gedit<CR>
    " Mnemonic _i_nteractive
    nnoremap <silent> <leader>gi :Git add -p %<CR>
    nnoremap <silent> <leader>gg :SignifyToggle<CR>
endif
