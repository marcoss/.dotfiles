syntax on

" Plugins
call plug#begin()

" Airline themes
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'

" Fuzzy finding
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Nerd tree
Plug 'preservim/nerdtree'

" Themes
Plug 'jnurmine/Zenburn'
Plug 'arcticicestudio/nord-vim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'flazz/vim-colorschemes'
Plug 'markvincze/panda-vim'
Plug 'embark-theme/vim', { 'as': 'embark', 'branch': 'main' }
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'romainl/Apprentice'
Plug 'ghifarit53/tokyonight-vim'
Plug 'katawful/kat.nvim'

" Initialize plugin system
call plug#end()

" colorscheme nord
" colorscheme happy_hacking
" colorscheme gruvbox
" colorscheme hybrid
" colorscheme nightfly
" colorscheme mac_classic
"colorscheme Tomorrow-Night-Blue
" colorscheme nightflight
colorscheme tokyonight

let g:airline_theme='tokyonight'

" Nerd tree binding control-F to open file explorer
nmap <C-f> :NERDTreeToggle<CR>

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
