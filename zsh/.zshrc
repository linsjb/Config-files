# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"

#plugins=(
#	git
#	zsh-autosuggestions
#	zsh-syntax-highlighting
#)

# Initialize plugins
# Register your plugins here. E.g:
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-completions"
#zplug "zsh-users/zsh-autosuggestions"
#zplug "zsh-users/git"
zplug raabf/dockertex, \
		from:gitlab
zplug load

# Plugins
source $ZSH/oh-my-zsh.sh
#source $(dirname $(gem which colorls))/tab_complete.sh

# User configuration
export LANG=sv_SE.UTF-8
export LC_CTYPE=sv_SE.UTF-8
export LC_ALL=sv_SE.UTF-8
export DOCKERTEX_ENGINE="docker"
export DOCKERTEX_DEFAULT_TAG="texlive2020"
# Paths
export PATH=/usr/local/sbin:$PATH
export PATH=$PATH:~/.pyenv/shims/python
export PATH="$PATH:$HOME/.composer/vendor/bin"

# React-native paths to be able to run "run-android" outside Android Studie /IntelliJ IDEA
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools


alias reload="source ~/.zshrc"
alias config="nvim ~/.zshrc"

# Color LS aliases
alias l='colorls --group-directories-first --almost-all'
alias ll='colorls --group-directories-first --almost-all --long'
alias ls='colorls --group-directories-first -1'

alias grb='gradle build'

alias py='f() {
		python3.7 $1
	≠; f'

alias grr='
	f() {
		gradle run --args="$1"
	}; f'


# C-stuffs
alias cb='cmake --build _build'
alias ccr='
  f() {
	echo --- Compile ouput ---;
  	cmake --build _build;
	echo;
	echo --- Program output ---;
	./_build/src/$1;
  }; f'
alias new-c-program='
	f() {
		git clone git@github.com:linsjb/cpp_project_base.git $1;
		cd $1;
		make build-structure;
		echo "Base program created sucessfully"
	}; f'

alias new-latex-basic='
	f() {
		git clone git@github.com:linsjb/LaTex-basic-template.git $1;
		cd $1;
		rm -rf .git;
		rm readme.md;
		echo LaTeX basic project "$1" created sucessfully!
	}; f'
alias new-latex-ie3='
	f() {
		git clone git@github.com:linsjb/LaTeX-IEEE-template.git $1;
		cd $1;
		rm -rf .git;
		rm readme.md;
		echo LaTeX IEEE project "$1" created sucessfully!
	}; f'

alias new-latex-presentation='
	f() {
		git clone git@github.com:linsjb/LaTeX-presentation-template.git $1;
		cd $1;
		rm -rf .git;
		rm readme.md;
		mkdir content;
		mkdir content/notes;
		mkdir attachments;
		mkdir attachments/figures;
		mkdir attachments/figures/images;
		mkdir attachments/tables;

		echo LaTeX presentation project "$1" created successfully!
	}; f'
alias git-init='
	f() {
		git init;
		git add .;
		git commit -m "First commit"
		git remote add origin $1;
		git push -u origin master;
	}; f'

alias fetch-pdf='
	f() {
		mv $1.pdf ~/Downloads/$1.pdf;	
		echo PDF renamed and moved to ~/downloads succesfully!
	}; f'

alias marked='f() {open -a "Marked 2" $1}; f'
alias za='f() zathura $1; f'

# Docker aliases
alias dops='docker ps'
alias dopsa='docker ps -a'
alias dorm='f() {docker rm $1 $2}; f'

alias doim='docker images'
alias doimrm='f() {docker image rm $1 $2};f'

alias dovo='docker volume ls'
alias dovop='docker volume prune'

alias done='docker network ls'
alias donep='docker network prune'

alias docou='f() {docker-compose up $1}; f'
alias docod='docker-compose down';
alias docos='docker-compose stop';
alias docob='docker-compose build';
alias docops='docker-compose ps';

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/linussjobro/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/linussjobro/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/linussjobro/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/linussjobro/google-cloud-sdk/completion.zsh.inc'; fi


if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
export PATH="/usr/local/sbin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
