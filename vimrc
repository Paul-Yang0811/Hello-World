
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" settings "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set number
set hlsearch
set incsearch
set tabstop=4
set shiftwidth=4
syntax on
set showcmd
set smartcase


" 总是显示状态栏
" set laststatus=2
" 显示光标当前位置
" set ruler
" 高亮显示当前行/列
set cursorline
"set cursorcolumn

" Turn off cursor blinking: just need to turn off => Settings -> Keyboard -> CursorBlinking
"set gcr=a:block-blinkon0

" set for vim-cursorword
set list lcs=tab:\|\ 

se t_Co=256
set tags=./tags;,tags
let g:NERDTreeWinPos="right"

" set for supertab
let g:SuperTabMappingForward = "<tab>"
let g:SuperTabMappingBackward= "s-tab"

<<<<<<< HEAD
nmap <F4> :TlistToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" quickfix setting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 设置 F2 打开/关闭 Quickfix 窗口,高度为15
nnoremap <F2> :call asyncrun#quickfix_toggle(15)<cr>

"参数 `-raw` 表示输出不用匹配错误检测模板 (errorformat) ，直接原始内容输出到 quickfix 窗口
nnoremap <F5> :AsyncRun -raw<space>

=======
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope setting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"" Use quickfix window to show cscope results
"set cscopequickfix=s-,c-,d-,i-,t-,e-
"
nmap <c-\>w :copen<CR>
nmap <c-\>ww :cclose<CR>

nmap <F2> :copen<CR>
nmap <F3> :cclose<CR>
>>>>>>> 9df81228fded20fefd6b865c548ec5599a42fb45

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plug-in "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged') 
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'Yggdroot/LeaderF'
Plug 'vim-scripts/a.vim'
Plug 'vim-scripts/taglist.vim'
Plug 'brookhong/cscope.vim'
"Plug 'chazy/cscope_maps'
Plug 'steffanc/cscopemaps.vim'
<<<<<<< HEAD
=======
Plug 'yggdroot/indentline'
>>>>>>> 9df81228fded20fefd6b865c548ec5599a42fb45
Plug 'vim-scripts/autoload_cscope.vim'
Plug 'yggdroot/indentline'
Plug 'itchyny/vim-cursorword'
"Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/asyncrun.vim'
"Plug 'w0rp/ale'
"Plug 'kien/rainbow_parentheses.vim'
"Plug 'christoomey/vim-tmux-navigator'
call plug#end()



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set color scheme "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

colorscheme gruvbox
set background=dark    " Setting dark mode
"set bg=light
"set guioptions=                 "去掉两边的scrollbar
"set guifont=Monaco:h17          "设置字体和字的大小

" change function color
autocmd BufNewFile,BufRead * :syntax match cfunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2
autocmd BufNewFile,BufRead * :syntax match cfunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1
hi cfunctions ctermfg=81
