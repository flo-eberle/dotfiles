" plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'jiangmiao/auto-pairs'

Plug 'tpope/vim-sensible'

Plug 'tpope/vim-commentary'

Plug 'morhetz/gruvbox'

Plug 'ap/vim-css-color'

Plug 'arzg/vim-substrata'

Plug 'arcticicestudio/nord-vim'

" end plugins
call plug#end()


set relativenumber

colorscheme nord

"----------------------------------------
" custom bindings
"----------------------------------------

" uppercase word in insert mode
inoremap <c-U> <esc>viwUi
" uppercase word in normal mode
nnoremap <c-U> viwU
