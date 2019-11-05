" plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'jiangmiao/auto-pairs'

Plug 'tpope/vim-sensible'

Plug 'tpope/vim-commentary'

Plug 'ap/vim-css-color'

Plug 'mboughaba/i3config.vim'

Plug 'vimwiki/vimwiki'

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
set termguicolors
colorscheme base16-tonerlow

" vimwiki
let g:vimwiki_list = [{'path': '~/Documents/wiki',
		      \ 'path_html': '~/Documents/wiki_html',
		      \ 'syntax': 'markdown', 'ext': '.md'}]

"----------------------------------------
" custom bindings
"----------------------------------------

" uppercase word in insert mode
inoremap <c-U> <esc>viwUi
" uppercase word in normal mode
nnoremap <c-U> viwU
