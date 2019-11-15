set nocompatible

" plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'jiangmiao/auto-pairs'

Plug 'tpope/vim-sensible'

Plug 'tpope/vim-commentary'

Plug 'ap/vim-css-color'

Plug 'mboughaba/i3config.vim'

Plug 'vimwiki/vimwiki'

Plug 'suan/vim-instant-markdown', {'for': 'markdown'}

" end plugins
call plug#end()


" Basic Settings
set relativenumber
set number

"" tabs
set tabstop=4		" width of tab
set softtabstop=4
set shiftwidth=4
set expandtab		" insert spaces instead of tab


" Colorscheme
set background=dark
let base16colorspace=256  " Access colors present in 256 colorspace"
" set termguicolors
colorscheme tonerlow

" vimwiki
let g:vimwiki_list = [{'path': '~/Documents/wiki',
		      \ 'path_html': '~/Documents/wiki_html',
		      \ 'syntax': 'markdown', 'ext': '.md'}]

" vim-instant-markdown
let g:instant_markdown_browser = "qutebrowser --target tab"

"----------------------------------------
" custom bindings
"----------------------------------------

" unmap space first
nnoremap <space> <Nop>
" map leader to SPACE
let mapleader="\<Space>"
" uppercase word in insert mode
inoremap <c-U> <esc>viwUi<esc>ea
" uppercase word in normal mode
nnoremap <c-U> viwUe
" move line downward
nnoremap <leader>- ddp
" move line upward
nnoremap <leader>_ ddkP
" split navigations
nnoremap <c-h> <c-w><c-h>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
" edit & source .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" enclose in quotes
nnoremap <leader>' viw<Esc>a'<Esc>Bi'<Esc>E
nnoremap <leader>" viw<Esc>a"<Esc>Bi"<Esc>E
