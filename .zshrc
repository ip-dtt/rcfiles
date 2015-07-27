# Path to your oh-my-zsh installation.
export ZSH=/Users/ipartuk/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git tmux)

# PROMPT configuration
#%{$fg[magenta]%}%n%{$reset_color%} at %{$fg[yellow]%}%m%{$reset_color%}

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/local/bin:/opt/local/sbin:/Users/ipartuk/Applications/homebrew/bin/:/Users/ipartuk/bin/"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias dtt="cd ~/projects/dtt_dev && ll"
alias fuzz="open -a /Users/ipartuk/Applications/Sublime\ Text.app \$(fzf)"
alias py="~/Applications/homebrew/bin/python2.7"
alias c="clear"

#mysql DB
alias MYMYSQL="mysql --host=devsql2.dttla.com --user=root --password=password"
alias MYMYSQL_QUICK_COMMAND="mysql --host=devsql2.dttla.com --user=root --password=password MEGADB -e"

#mysql Replica
alias MYSQL_REPLICA="mysql --host=megadb-replica.cptuns7r54qp.us-west-2.rds.amazonaws.com --user=dbadmin -p"

#show sorted remote git branches by commit date
alias gitnews="git for-each-ref --count=30 --sort=committerdate refs/heads --format='%(committerdate:short) -- %(committername) -- %(refname:short)'"

#Sublime open a fuzzyfinder in current directory, if file is chosen
zxc()  {
	file=$(fzf)
	if [[ -n $file ]]; then
		open -a /Users/ipartuk/Applications/Sublime\ Text.app $file 
		#mvim $file
	fi
 
}

#Ack for cake files
pack() {
   Ack --php --ctp -i $@
}


#mvim open in remote session
m() {
	mvim --remote $@
}

v() {
	vim -
}

allstatus() {
for i in $(find . -type d -d 1): 
do 
	echo $i: $(g -C $i status 2&>1 | grep -v fatal | grep -i branch)
done;
}


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
alias dttgit='/home/websites/CakeShare/cake2shell dttgit';
alias getchmod='stat -f "%OLp"'
alias p="~/testing/C/hello"
alias fs="git fetch && git status"
alias vi="vim -u NONE"
