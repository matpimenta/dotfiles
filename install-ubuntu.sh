echo ">>> Installing dependencies"
sudo apt update
sudo apt upgrade -y
sudo apt install -y zsh cmake tmux vim-gtk python3-dev build-essential autojump curl git

./install.sh

echo ">>> Installing Oh my Zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" || true
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting || true
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions || true

echo ">>> Install P10K"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k || true

echo ">>> Configuring VIM"
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

echo "Configuring tmux"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo ">>> Compiling Vim dependencies"
cd ~/.vim/bundle/YouCompleteMe
./install.py --all
