
# Oh-my-zsh installation
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

# Clone ZSH theme and plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/denysdovhan/spaceship-prompt.git $HOME/.oh-my-zsh/custom/themes/spaceship-prompt


# Build symlinks
rm ~/.vimrc
ln -s ~/.config/vim/.vimrc ~/.vimrc

rm ~/.zshrc
ln -s ~/.config/zsh/.zshrc ~/.zshrc

rm ~/.hyper.js
ln -s ~/.config/hyper/hyper.js ~/.hyper.js
ln -s $HOME/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme $HOME/.oh-my-zsh/custom/themes/spaceship.zsh-theme