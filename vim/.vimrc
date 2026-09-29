set number
set nocompatible

syntax on
filetype off

" tabs
set tabstop=4
set shiftwidth=4
set expandtab
" highlight
set hlsearch
set wildmenu

set t_Co=256
colorscheme retrobox 
      
" Plugins
call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'vimsence/vimsence'
Plug 'vim-syntastic/syntastic'
Plug 'preservim/nerdtree'
Plug 'PhilRunninger/nerdtree-visual-selection'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'yegappan/lsp'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-obsession'
call plug#end()

" Plugin configs
" nerd tree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

autocmd VimEnter * NERDTree
" yegappan lsp
let lspOpts = #{autoHighlightDiags: v:true}
autocmd User LspSetup call LspOptionsSet(lspOpts)

let lspServers = [#{
	\	  name: 'gcc',
	\	  filetype: ['c', 'cpp'],
	\	  path: '/usr/bin/gcc',
	\	  args: ['--background-index']
	\ }]
autocmd User LspSetup call LspAddServer(lspServers)
