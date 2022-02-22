" ---------- Vim Config ----------
set backspace=indent,eol,start
set number
set termguicolors
set completeopt=menuone,noinsert,noselect
set shortmess+=c

let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
let g:completion_enable_auto_popup = 0

hi Normal guibg=NONE ctermbg=NONE

" ---------- Plugins --------------
call plug#begin()

" Colour Scheme + Icons
Plug 'pineapplegiant/spaceduck'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'kyazdani42/nvim-web-devicons'

" Code Completeion
Plug 'neovim/nvim-lspconfig'
Plug 'wbthomason/packer.nvim'
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
Plug 'LnL7/vim-nix'
Plug 'cohama/lexima.vim'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Design
Plug 'nvim-lualine/lualine.nvim'
Plug 'voldikss/vim-floaterm'
Plug 'frazrepo/vim-rainbow'

" Functions
Plug 'preservim/nerdcommenter'
Plug 'preservim/tagbar'
Plug 'christoomey/vim-tmux-navigator'

" Modes
Plug 'scrooloose/nerdtree'
Plug 'reedes/vim-pencil'

call plug#end()

" ---------- Plugin Config ------------ "

" Material Theme
" let g:material_theme_style = 'ocean'
" colorscheme material

" SpaceDuck Theme
colorscheme spaceduck

" Nerd Commenter
let g:NERDCreateDefaultMappings = 1
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

" Floating Terminal
let g:floaterm_keymap_toggle = '<F12>'
let g:floaterm_shell = 'pwsh'

" Vim Rainbow
let g:rainbow_active = 1

" Nerd Tree
nnoremap <C-t> :NERDTreeToggle<CR>

" Tagbar
nmap <F8> :TagbarToggle<CR>

" Vim Pencil
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END

" JSONC
autocmd FileType json syntax match Comment +\/\/.\+$+
