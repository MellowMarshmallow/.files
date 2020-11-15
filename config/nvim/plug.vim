""" Install vim-plug
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync
endif

""" Install Plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'Yggdroot/indentLine'
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

call plug#end()

""" Theme (One Dark)
set termguicolors
set background=dark
colorscheme onedark
" Disable background colour
autocmd VimEnter * highlight Normal ctermbg=NONE guibg=NONE
let g:onedark_hide_endofbuffer=0
let g:onedark_termcolors=256
let g:onedark_terminal_italics=1

""" Status Line (Light Line + Light Line Buffer Line)
let g:lightline = {
    \ 'colorscheme': 'onedark',
    \ 'separator': { 'left': '', 'right': '' },
    \ 'subseparator': { 'left': '•', 'right': '•' },
    \ 'tabline': { 'left': [ ['buffers'] ], 'right': [ ['close'] ] },
    \ 'component_expand': { 'buffers': 'lightline#bufferline#buffers' },
    \ 'component_type': { 'buffers': 'tabsel' }
    \ }

" Keybindings for opening buffers (Leader -> Number)
nmap <Leader>1 <Plug>lightline#bufferline#go(1)
nmap <Leader>2 <Plug>lightline#bufferline#go(2)
nmap <Leader>3 <Plug>lightline#bufferline#go(3)
nmap <Leader>4 <Plug>lightline#bufferline#go(4)
nmap <Leader>5 <Plug>lightline#bufferline#go(5)
nmap <Leader>6 <Plug>lightline#bufferline#go(6)
nmap <Leader>7 <Plug>lightline#bufferline#go(7)
nmap <Leader>8 <Plug>lightline#bufferline#go(8)
nmap <Leader>9 <Plug>lightline#bufferline#go(9)
nmap <Leader>0 <Plug>lightline#bufferline#go(10)

" Keybindings for closing buffers (Leader -> c -> Number)
nmap <Leader>c1 <Plug>lightline#bufferline#delete(1)
nmap <Leader>c2 <Plug>lightline#bufferline#delete(2)
nmap <Leader>c3 <Plug>lightline#bufferline#delete(3)
nmap <Leader>c4 <Plug>lightline#bufferline#delete(4)
nmap <Leader>c5 <Plug>lightline#bufferline#delete(5)
nmap <Leader>c6 <Plug>lightline#bufferline#delete(6)
nmap <Leader>c7 <Plug>lightline#bufferline#delete(7)
nmap <Leader>c8 <Plug>lightline#bufferline#delete(8)
nmap <Leader>c9 <Plug>lightline#bufferline#delete(9)
nmap <Leader>c0 <Plug>lightline#bufferline#delete(10)

""" Indentation Lines
let g:indentLine_char_list = [ '│', '╎', '┆', '┊']

""" Start Screen (Startify)
let g:startify_custom_header = [
    \ ' ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗',
    \ ' ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║',
    \ ' ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║',
    \ ' ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║',
    \ ' ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║',
    \ ' ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝',
    \]

""" NERDTree
map <Leader>n :NERDTreeToggle<CR>
" Close Vim if only NERDTree window is left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
