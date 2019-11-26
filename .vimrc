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


" Colorscheme ----------------------{{{
set background=dark
let base16colorspace=256  " Access colors present in 256 colorspace"
" set termguicolors
colorscheme tonerlow
" TODO: move to colorscheme
highlight Comment cterm=italic gui=italic
" highlight 81st column
call matchadd('ColorColumn', '\%81v', 100)
"}}}

" vimwiki
let g:vimwiki_list = [{'path': '~/Documents/wiki',
		      \ 'path_html': '~/Documents/wiki_html',
		      \ 'syntax': 'markdown', 'ext': '.md'}]

" vim-instant-markdown
let g:instant_markdown_browser = "qutebrowser --target tab"

"----------------------------------------
" custom bindings
"----------------------------------------

" remap leader to spacebar
" unmap space first
nnoremap <space> <Nop>
let mapleader="\<Space>"

" :write with Alt-S
nnoremap s :w<cr>

" copy to and paste from clipboard via xclip
" requires xclip
nnoremap y :.w !xclip -selection clipboard<cr><cr>
nnoremap p :r!xclip -o -selection clipboard<cr>


" edit & source .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" split navigations
nnoremap <c-h> <c-w><c-h>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>

" TODO: this should probably be a mapping local to filetype python
" run current file with python
nnoremap <leader>pp :!python %<cr>

" TODO: check behaviour on first/last line
" move line downward
nnoremap <leader>- ddp
" move line upward
nnoremap <leader>_ ddkP

" Ctrl-U: uppercase word in insert and normal mode
inoremap <c-U> <esc>viwUi<esc>ea
nnoremap <c-U> viwUe
" Ctrl-UU: uppercase first character in insert and normal mode
inoremap <c-U><c-U> <esc>viw<esc>bvUea
nnoremap <c-U><c-U> viw<esc>bvU


" TODO: map them to leader instead of Alt?
" enclose in "",'',``,(),[],{}
nnoremap ' viw<Esc>a'<Esc>bi'<Esc>e
nnoremap '' viW<Esc>a'<Esc>Bi'<Esc>E
nnoremap " viw<Esc>a"<Esc>bi"<Esc>e
nnoremap "" viW<Esc>a"<Esc>Bi"<Esc>E
nnoremap ` viw<Esc>a`<Esc>bi`<Esc>e
nnoremap `` viW<Esc>a`<Esc>Bi`<Esc>E
nnoremap ( viw<Esc>a)<Esc>bi(<Esc>e
nnoremap (( viW<Esc>a)<Esc>Bi(<Esc>E
nnoremap [ viw<Esc>a]<Esc>bi[<Esc>e
nnoremap [[ viW<Esc>a]<Esc>Bi[<Esc>E
nnoremap { viw<Esc>a}<Esc>bi{<Esc>e
nnoremap {{ viW<Esc>a}<Esc>Bi{<Esc>E
" nnoremap <leader>' Ea'<esc>Bi'<esc>E
" nnoremap <leader>' viw<Esc>a'<Esc>Bi'<Esc>E
" nnoremap <leader>" viw<Esc>a"<Esc>Bi"<Esc>E
" nnoremap <leader>` viw<Esc>a`<Esc>Bi`<Esc>E
