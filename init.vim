"-----------------------
"| Custom Key Mappings |
"-----------------------
let g:mapleader = ','
"space bar to enter command mode
nnoremap <space> :
":Q to quit without saving
cnoremap Q q!
"Meta + . to repeat last command
nnoremap <M-.> :<up><CR>
",0 to go to end of line
nnoremap <leader>0 $
",y to copy to system in visual mode
vnoremap <leader>y "+y
"Y to copy to end of line
nnoremap Y y$
"Terminal Floaterm
nnoremap <C-t> :FloatermToggle<CR>
tnoremap <C-t> <C-\><C-n>:FloatermToggle<CR>
"LazyGit
nnoremap <leader>gg :FloatermNew lazygit<CR>
"vim-calc
nnoremap <leader>c :call Calc()<CR>
"Drag lines
vnoremap <M-j> :m'>+<CR>gv
vnoremap <M-k> :m-2<CR>gv
nnoremap <M-j> ddp
nnoremap <M-k> ddkP
inoremap <M-j> <esc>ddp
inoremap <M-k> <esc>ddkP
vnoremap <M-down> :m'>+<CR>gv
vnoremap <M-up> :m-2<CR>gv
nnoremap <M-down> ddp
nnoremap <M-up> ddkP
inoremap <M-down> <esc>ddp
inoremap <M-up> <esc>ddkP
",/ to clear search highlighting
nnoremap <leader>/ /nothingatall<CR>

"------------
"| Settings |
"------------
set number				"Enable line numbers
set relativenumber		"Line numbers relative to current line
set tabstop=4			"4 spaces for tab
set shiftwidth=4		"4 spaces for tab in front
set expandtab			"Converts tabs to spaces
set smarttab			"smarter tabbing
set autoindent			"Autoindents next line
set smartindent			"Smart indents in code
colorscheme slate		"Set colorscheme 
syntax on				"Enable syntax highlighting
set mouse=a				"Enables mouse
set linebreak			"Prevents words from breaking over line
set breakindent			"Indent wrapped lines
let &showbreak='  '	    "Indent amount
set scrolloff=7         "keeps 7 lines below cursor when scrolling
set showcmd             "Shows current mode"

"--------------------------------------
"| Auto install vim-plug if not found |
"--------------------------------------
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

"--------------------------------------
"| Auto PlugInstall upon opening nvim |
"--------------------------------------
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

"-----------
"| Plugins |
"-----------
call plug#begin('~/.config/nvim/autoload/plugged')
"Open a terminal over current session
Plug 'voldikss/vim-floaterm'
"Latex support
Plug 'lervag/vimtex'
"Git status
Plug 'mhinz/vim-signify'
"Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"Start screen with quick file access
Plug 'mhinz/vim-startify'
"Comment/uncomment lines
Plug 'tpope/vim-commentary'
"Auto-complete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Custom info bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Undo tree of all undos
Plug 'mbbill/undotree'
"Quick word maneuvering
Plug 'unblevable/quick-scope'
"Quick container editing
Plug 'jiangmiao/auto-pairs' 
Plug 'tpope/vim-surround' 
"Calculator
Plug 'theniceboy/vim-calc'

"Plugin config
let g:vimtex_view_method = 'skim'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<S-tab>"
let g:deoplete#enable_at_startup = 1

" let g:startify_custom_header = [
"  \ '     ___        ___        ___                              ___     ',
"  \ '    /__/\      /  /\      /  /\          ___     ___       /__/\    ',
"  \ '    \  \:\    /  /:/_    /  /::\        /__/\   /  /\     |  |::\   ',
"  \ '     \  \:\  /  /:/ /\  /  /:/\:\       \  \:\ /  /:/     |  |:|:\  ',
"  \ ' _____\__\: /  /:/ /:/ /  /:/  \:\       \  \:/__/::\   __|__|:|\:\ ',
"  \ '/__/:::::::/__/:/ /:/ /__/:/ \__\:\  ___  \__\\__\/\:\_/__/::::| \:\',
"  \ '\  \:\~~\~~\  \:\/:/ /\  \:\ /  /:/ /__/\ |  |:| \  \:\\  \:\~~\__\/',
"  \ ' \  \:\  ~~ \  \::/ /: \  \:\  /:/  \  \:\|  |:|  \__\::\  \:\      ',
"  \ '  \  \:\     \  \:\/:/  \  \:\/:/    \  \:\__|:|  /__/:/ \  \:\     ',
"  \ '   \  \:\     \  \::/    \  \::/      \__\::::/   \__\/   \  \:\    ',
"  \ '    \__\/      \__\/      \__\/           ~~~~             \__\/    ',
"  \]

call plug#end()

"Vimtex Deoplete Command
call deoplete#custom#var('omni', 'input_patterns', {
      \ 'tex': g:vimtex#re#deoplete
      \})
