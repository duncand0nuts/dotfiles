# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.dotfiles/oh-my-zsh

# Set name of the theme to load.
# Look in $ZSH/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="awesomepanda"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.dotfiles/oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew colorize compleat dirpersist gem git git-flow osx node npm nvm rvm ssh-agent docker)

source $ZSH/oh-my-zsh.sh

# zle's history-search
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

#maven
alias mci='mvn clean install'

#parallel (mave sure it's insalled!)
alias parallel='parallel --no-notice'

#nvm
export NVM_DIR=~/.nvm
source /usr/local/opt/nvm/nvm.sh
nvm use stable

#aws client
source /usr/local/bin/aws_zsh_completer.sh

#mr
alias mr='mr -j'

#scala
alias scala='scala -Dscala.color'
export SCALA_HOME=/usr/local/bin/scala
export PATH=$PATH:$SCALA_HOME/bin

#spark (todo: install spark)
export PATH=$PATH:/opt/spark/default/bin

#java
export JAVA_HOME=$(/usr/libexec/java_home)

#docker stuff
export DOCKER_CERT_PATH=/Users/omar/.docker/machine/machines/default
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.99.100:2376


# Customize to your needs...
unsetopt correct

# run fortune on new terminal :)
fortune
