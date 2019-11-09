
# Oh-my-zsh installation
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

# Clone ZSH theme and plugins
git clone https://github.com/denysdovhan/spaceship-prompt.git $ZSH_CUSTOM/themes/spaceship-prompt
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Build symlinks
ln -s ~/.dotfile_configs/vim/vimrc ~/.vimrc
rm ~/.zshrc
ln -s ~/.dotfile_configs/zsh/zshrc ~/.zshrc
ln -s ~/.dotfile_configs/hyper/hyper.js ~/.hyper.js
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"