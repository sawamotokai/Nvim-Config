"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/
"
" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" General Settings
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/functions.vim

" Themes
" source $HOME/.config/nvim/themes/syntax.vim
source $HOME/.config/nvim/themes/airline.vim
source $HOME/.config/nvim/themes/theme.vim

" Plugin Configuration
source $HOME/.config/nvim/plug-config/nerdtree.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/auto-pairs.vim
source $HOME/.config/nvim/plug-config/which-key.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/floaterm.vim
" source $HOME/.config/nvim/plug-configbetter-whitespace.vim
" source $HOME/.config/nvim/plug-config/gitgutter.vim
" source $HOME/.config/nvim/plug-config/polyglot.vim
" source $HOME/.config/nvim/plug-config/bracey.vim
" source $HOME/.config/nvim/plug-config/markdown-preview.vim
" luafile $HOME/.config/nvim/lua/plug-colorizer.lua


" Add paths to node and python here
if !empty(glob("~/.config/nvim/paths.vim"))
  source $HOME/.config/nvim/paths.vim
endif

