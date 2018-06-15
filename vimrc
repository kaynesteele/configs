colorscheme delek
syntax on

set nocompatible
set wildmenu
set wildmode=longest:full,full
set path+=**
set laststatus=2
set expandtab
set shiftwidth=4
set backspace=indent,eol,start
set tabstop=4
set title
set modelines=5
set incsearch
set number relativenumber
set splitright

inoremap " ""<Esc>i
inoremap ( ()<Esc>i
inoremap { {}<Esc>i

noremap ; l
noremap l k
noremap k j
noremap j h

nnoremap <F1> :tabPrevious<Enter>
nnoremap <C-w>j <C-w>h
nnoremap <C-w>k <C-w>j
nnoremap <C-w>l <C-w>k
nnoremap <C-w>; <C-w>l
nnoremap <S-q> <C-w>q 
nnoremap <Space>j <C-w><C-h>
nnoremap <Space>; <C-w><C-l>
nnoremap <Space>d <C-w>q
nnoremap <Space>b :badd<Space>
nnoremap <Space>v :vsp<Enter><C-w><C-l><Enter>:e<Space>
nnoremap <Space>e :e<Space>
nnoremap <Space>t :tabnew<Enter>
nnoremap <Tab> <C-w><c-w>
nnoremap <Space><Tab> :tabn<Enter>
nnoremap  o o<Esc>
nnoremap O O<Esc>

autocmd BufRead *.cpp,*.h :nnoremap <Space>s iswitch(temp)<Enter>{<Enter><Tab>case 1:<Enter><Enter><Tab>break;<Enter>}<Esc>?temp<Enter>
autocmd BufRead *.cpp,*.h :nnoremap <Space>f i()<Enter>{<Enter><Enter>}<Esc>3ki
autocmd BufRead *.cpp,*.h :nnoremap <Space>l ifor(int i=0; i<temp; i++)<Enter>{<Enter><Enter>}<Esc>?temp<Enter>
autocmd BufRead *.cpp,*.h :nnoremap <Space>i i#include <><Esc>i
autocmd BufRead *.cpp,*.h :nnoremap <Space>c iclass temp<Enter>{<Enter><Tab>private:<Enter><Enter><Tab>public:<Enter>};<Esc>?temp<Enter>
