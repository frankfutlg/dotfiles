call plug#begin()
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'norcalli/nvim-colorizer.lua'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'andweeb/presence.nvim'
call plug#end()

colorscheme catppuccin
set termguicolors
lua require'colorizer'.setup()
syntax on
set cursorline
set number
