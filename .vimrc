"common setting
"set line number
set nu

"set tabs property
"expand tab into space
set expandtab
"tab takes up the number of space
set tabstop=4
"tab format take up the number of space 
set shiftwidth=4
"constinuous space look into the tab
set softtabstop=4

"set encoding format
set encoding=utf-8

"define shortcut key's prefix key
let mapleader = ";"

"define shortcut key into line start
nmap LB b

"define shortcut key into line end
nmap LE e

"copy data into system's clipboard
"vnoremap <Leader>y "+y

"paste data of system's clipboard into vim
"nmap <Leader>p "+p

"save current window's data
nmap <Leader>w :w<CR>

"don't save modified data quit
nmap <Leader>q :q!<CR>

"open grammar highlight function
syntax enable
syntax on

" 跳转至左方的窗口
nnoremap <Leader>hw <C-W>h

"operation:打开或关闭当前折叠<Leader>zM，关闭所有折叠<Leader>zR
"grammar-based fold
set foldmethod=syntax
"crimple-based fold
"set foldmethod=indent

"when start vim,close the fold code
set nofoldenable

set backspace=indent,eol,start



















"-------------------------------------------------
"------------------Vundle setting-----------------
"-------------------------------------------------

set nocompatible                " be iMproved
filetype off                    " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"let Vundle manage Vundle
Bundle 'gmarik/vundle'

"-----------------
"my Bundle here:
"-----------------

" original repos on github
"Bundle 'kien/ctrlp.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'octol/vim-cpp-enhanced-highlight'
Bundle 'majutsushi/tagbar'
Bundle 'Valloric/YouCompleteMe'

" vim-scripts repos
"Bundle 'YankRing.vim'

"non github repos
"Bundle 'git://git.wincent.com/command-t.git'
filetype plugin indent on


"------------------------------------------
"----------color scheme setting------------
"------------------------------------------

syntax enable
set background=light
"colorscheme solarized



" 设置 tagbar 子窗口的位置出现在主编辑区的左边 
let tagbar_left=1 
" 设置显示／隐藏标签列表子窗口的快捷键。速记：identifier list by tag
nnoremap <Leader>t :TagbarToggle<CR> 
" 设置标签子窗口的宽度 
let tagbar_width=32 
" tagbar 子窗口中不显示冗余帮助信息 
let g:tagbar_compact=1
" 设置 ctags 对哪些代码标识符生成标签
let g:tagbar_type_cpp = {
    \ 'kinds' : [
         \ 'c:classes:0:1',
         \ 'd:macros:0:1',
         \ 'e:enumerators:0:0', 
         \ 'f:functions:0:1',
         \ 'g:enumeration:0:1',
         \ 'l:local:0:1',
         \ 'm:members:0:1',
         \ 'n:namespaces:0:1',
         \ 'p:functions_prototypes:0:1',
         \ 's:structs:0:1',
         \ 't:typedefs:0:1',
         \ 'u:unions:0:1',
         \ 'v:global:0:1',
         \ 'x:external:0:1'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
\ }
