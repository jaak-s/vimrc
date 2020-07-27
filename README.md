# Installation for neovim

```
## clone project
cd ~/git/
git clone https://github.com/jaak-s/vimrc

## create symlink
mkdir -p ~/.config/nvim/
ln --symbolic ~/git/vimrc/init.vim ~/.config/nvim/

## install vim-plug (https://github.com/junegunn/vim-plug)
## then run nvim and execute :PlugInstall

## requires python packages (for deoplete-jedi):
pip install pynvim
pip install jedi
```
