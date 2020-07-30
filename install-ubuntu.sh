echo ">>> Installing dependencies"
sudo apt update
sudo apt upgrade -y
sudo apt install -y zsh cmake tmux vim-gtk


echo ">>> Installing Oh my Zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo ">>> Install P10K"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo ">>> Configuring VIM"
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

echo ">>> Compiling Vim dependencies"
cd ~/.vim/bundle/YouCompleteMe
./install.py --all
