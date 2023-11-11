" General
set autoread
set hidden
set clipboard+=unnamed
set number
set fenc=utf-8
set virtualedit=onemore
set expandtab
set smartindent
set shiftwidth=2
set backspace=indent,eol,start


" Plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()


" Nord
colorscheme nord


" NERDTree
let NERDTreeShowHidden = 1
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif


" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
nnoremap <C-p> <Plug>AirlineSelectPrevTab
nnoremap <C-n> <Plug>AirlineSelectNextTab
