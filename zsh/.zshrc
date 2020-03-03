# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"

plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration
export LANG=se_SV.UTF-8
export LC_CTYPE=se_SV.UTF-8

# React-native paths to be able to run "run-android" outside Android Studie /IntelliJ IDEA
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

source ~/.dotfile_configs/zsh/zsh_aliases
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/linussjobro/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/linussjobro/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/linussjobro/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/linussjobro/google-cloud-sdk/completion.zsh.inc'; fi
