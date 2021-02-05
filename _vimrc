" filetype indent plugin on

augroup ft_vim
	au!
	au FileType vim setlocal foldmethod=marker
augroup END

" General
set nocompatible
set nobackup
set noswapfile
set history=1024
set autochdir
set whichwrap=b,s,<,>,[,]
set nobomb
set backspace=indent,eol,start whichwrap+=<,>,[,]
" vim ��Ĭ�ϼĴ�����ϵͳ���а干��
set clipboard+=unnamed
" ���� alt ����ӳ�䵽�˵���
set winaltkeys=no

" lang & encoding
set fileencodings=utf-8,gbk2312,gbk,gb18030,cp936
set encoding=utf-8
set langmenu=zh_CN
let $LANG = 'en_US.UTF-8'

" GUI
colorscheme molokai
"colorscheme github
"colorscheme monokai
"set bg=light
let g:molokai_original = 1

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
set cursorline
set hlsearch
set number
" ���ڴ�С
set lines=35 columns=140
" �ָ�����Ĵ���λ�ڵ�ǰ�����±�/�ұ�
set splitbelow
set splitright
" ����ʾ����/�˵���
set guioptions-=T
set guioptions-=m
set guioptions-=L
set guioptions-=r
set guioptions-=b
" ʹ������ tab ��ʽ������ gui
set guioptions-=e
set nolist
set guifont=Inconsolata:h12:cANSI

" Format
"set autoindent
set smartindent
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set foldmethod=indent
syntax on

" keymap
let mapleader=","

nmap <leader>s :source $VIM/_vimrc<cr>
nmap <leader>e :e $VIM/_vimrc<cr>

map <leader>tn :tabnew<cr>
map <leader>tc :tabclose<cr>
map <leader>th :tabp<cr>
map <leader>tl :tabn<cr>

" �ƶ��ָ��
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

" ����ģʽ�� alt+j,k,h,l �����ָ�ڴ�С
nnoremap <M-J> :resize +5<cr>
nnoremap <M-k> :resize -5<cr>
nnoremap <M-h> :vertical resize -5<cr>
nnoremap <M-l> :vertical resize +5<cr>

" ����ģʽ�ƶ���� alt + �����
inoremap <M-j> <Down>
inoremap <M-k> <Up>
inoremap <M-h> <Left>
inoremap <M-l> <Right>

" �����Զ���ȫ
inoremap ` ``<ESC>i
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap {<CR> {<CR>}<ESC>O

" IDE like delete
inoremap <C-BS> <Esc>bdei

nnoremap vv ^vg_
" ת����ǰ��Ϊ��д
inoremap <C-u> <esc>mzgUiw`za
" ����ģʽ�µ�����β
cnoremap <C-a> <home>
cnoremap <C-e> <end>

nnoremap <F2> :setlocal number!<cr>
nnoremap <leader>w :set weap!<cr>

imap <C-v> "+gP
vmap <C-c> "+y
vnoremap <BS> d
vnoremap <C-C> "+y
vnoremap <C-Insert> "+y
imap <C-V> "+gP
map <S-Insert> <C-R>+
cmap <C-V> <C-R>+
cmap <S-Insert> <C-R>+

exe 'inoremap <script> <C-V>' paste#paste_cmd['i']
exe 'vnoremap <script> <C-V>' paste#paste_cmd['v']

" �򿪵�ǰĿ¼ windows
map <leader>ex :!start explorer %:p:h<CR>

" �򿪵�ǰĿ¼CMD
map <leader>cmd :!start<cr>
" ��ӡ��ǰʱ��
map <F3> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
" Tagbar
nmap <F8> :TagbarToggle<CR>

" ���Ƶ�ǰ�ļ�/·�������а�
nmap ,fn :let @*=substitute(expand("%"), "/", "\\", "g")<CR>
nmap ,fn :let @*=substitute(expand("%:p"), "/", "\\", "g")<CR>

" �����л� Buffer ��ݼ�
nnoremap <C-left> :bn<CR>
nnoremap <C-right> :bp<CR>

" set the runtime path to include Vundle and initialize
set rtp+=$VIM/vim82/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'fatih/vim-go'
"Plugin 'Shougo/neocomplete'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Bundle 'Blackrush/vim-gocode'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'SirVer/ultisnips'
Plugin 'Raimondi/delimitMate'
call vundle#end()
filetype plugin indent on

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
autocmd VimEnter * NERDTree
" go������ʾ
imap <F6> <C-x><C-o>
" �Զ���ȫ
imap <C-Space> <C-x><C-0>
" �Զ����ش��벹ȫ���
let g:neocomplete#enable_at_startup = 1
