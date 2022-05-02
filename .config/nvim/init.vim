call plug#begin()
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'norcalli/nvim-colorizer.lua'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'andweeb/presence.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'numToStr/Comment.nvim'
call plug#end()

autocmd BufWritePost ~/.local/src/dwmblocks/config.h !cd ~/.local/src/dwmblocks/; doas make install && { killall -q dwmblocks;setsid dwmblocks & }
colorscheme catppuccin
set termguicolors
set cursorline
set number

lua require'colorizer'.setup()
syntax on
