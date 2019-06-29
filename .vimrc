syntax on
" filetype off

" Show linenumbers
set number
set ruler
set cole="1"

" Set Proper Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Basic Plugins
Plugin 'pangloss/vim-javascript'
Plugin 'leshill/vim-json'
Plugin 'mxw/vim-jsx'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/syntastic'
Plugin 'dracula/vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

call vundle#end()

color dracula
set background=dark

" configure vim-javascript
let g:javascript_conceal = 1
let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"
" let g:javascript_conceal_noarg_arrow_function = "🞅"
" let g:javascript_conceal_underscore_arrow_function = "🞅"

" configre vim-jsx
let g:jsx_ext_required = 0

let g:syntastic_javascript_checkers = ['eslint']

" airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1 
let g:airline_theme='hybrid'
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1 

