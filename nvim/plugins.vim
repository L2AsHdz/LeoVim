" Autoinstalacion de Plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugins')

"Icons for neovim
"https://github.com/ryanoasis/vim-devicons
Plug 'ryanoasis/vim-devicons'
"https://github.com/kyazdani42/nvim-web-devicons
Plug 'kyazdani42/nvim-web-devicons'

"https://github.com/nvim-lua/plenary.nvim
Plug 'nvim-lua/plenary.nvim'

so ~/.config/nvim/visual.vim
so ~/.config/nvim/devtools.vim
so ~/.config/nvim/gittools.vim
so ~/.config/nvim/utils.vim

call plug#end()
