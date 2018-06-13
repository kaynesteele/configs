set nocompatible
set wildmenu
set wildmode=longest:full,full
colorscheme delek
:noremap ; l
:noremap l k
:noremap k j
:noremap j h
:syntax on
set backspace=indent,eol,start
nnoremap <C-w>j <C-w>h
nnoremap <C-w>k <C-w>j
nnoremap <C-w>l <C-w>k
nnoremap <C-w>; <C-w>l
nnoremap <S-q> <C-w>q 
nnoremap <Space>j <C-w><C-h>
nnoremap <Space>; <C-w><C-l>
nnoremap <Space>d <C-w>q
nnoremap <Space>b :badd<Space>
nnoremap <Space>s iswitch(temp)<Enter>{<Enter><Tab>case 1:<Enter><Enter><Tab>break;<Enter>}<Esc>?temp<Enter>
nnoremap <Space>f iint temp()<Enter>{<Enter><Enter>}<Esc>?temp<Enter>
nnoremap <Space>l ifor(int i=0; i<temp; i++)<Enter>{<Enter><Enter>}<Esc>?temp<Enter>
nnoremap <Space>v :vsp<Enter><C-w><C-l><Enter>:e<Space>
nnoremap <Space>e :e<Space>
nnoremap <Space>t :tabnew<Enter>
nnoremap <Space>i i#include <><Esc>i
nnoremap <Tab> <C-w><c-w>
nnoremap <Space><Tab> :tabn<Enter>
set tabstop=4
nnoremap <Space>c iclass temp<Enter>{<Enter><Tab>private:<Enter><Enter><Tab>public:<Enter>};<Esc>?temp<Enter>
inoremap " ""<Esc>i
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
set title
set modelines=5
set incsearch
set number relativenumber
set splitright
nnoremap  o o<Esc>
nnoremap O O<Esc>
set path+=**
set laststatus=2
set expandtab
set shiftwidth=4
