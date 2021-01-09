# Git Settings
alias g="git "
alias get="git "
alias got="git "
alias gs="git status "
alias ga="git add "
alias gb="git branch "
alias gc="git commit"
alias gC="git clone"
alias gd="git diff"
alias gi="git init"
alias go="git checkout "
alias gr="git remote "
alias gP="git pull"
alias gp="git push"
alias g.="git add -u && git add ."
alias rebase="g pull --rebase"


#MISC
alias @etc="cd /private/etc"

# NPM
alias ni="npm install"
alias nid="npm install --save-dev"
alias nis="npm install --save"
alias nit="npm init"


# UNITY
alias accelerator="/Applications/Unity/accelerator/unity-accelerator"


# YARN
alias y="yarn"
alias ya="yarn add"
alias yu="yarn upgrade"
alias yi="yarn install"
alias yis="yarn install"
alias yad="yarn add --dev"
alias yao="yarn optional --dev"
alias yap="yarn peer --dev"
alias yr="yarn run"
alias yar="yarn run"
alias yer="yarn run"

alias y+="yarn start"
alias y-="yarn stop"


#ZSH
alias @zsh="cd ~/.oh-my-zsh/custom/" # NAVIGATE TO ZSH CUSTOM DIR

# Servers
alias pstart= "python -m SimpleHTTPServer 8000"

# Misc
alias @="ls" # Show all files
alias @@="ls -a" # Show all files + hidden
alias please="sudo"
alias pls="sudo"
alias flushdns="dscacheutil flushcache"
alias ip="curl -s http://checkip.dyndns.org | sed 's/[a-zA-Z/<> :]//g'"
alias dev="yarn dev"
alias @dev="yarn dev"
alias run="yarn run"
alias @run="yarn run"
alias start="yarn start"
alias @start="yarn start"
alias i="yarn install"
alias @i="yarn install"
alias @a="yarn add"
alias @ad="yarn add --dev"

# Directories
alias move="mv" # MOVE FROM A TO B
alias delete="rm -rf" #REMOVE FILE OR DIRECORY
--() {rm -rf $*} #SHORTER VERSION OF ABOVE
+() {mkdir $*} # CREATE DIRECTORY
++() {mkdir $* && cd $*} # CREATE DIR & MOVE TO IT


# COPY CONTENTS OF ONE DIR TO ANOTHER
copy() {
if [[ -d $2/ ]]; then # MAKE SURE DESTINATION EXISTS
  cp -a $1/ $2/
else # IF DESTINATION DOESN'T EXIST, CREATE IT
  mkdir $2/ && cp -a $1/ $2/
fi
}


# Redis start/stop
redis() {
if [[ $1 == start ]]; then # MAKE SURE DESTINATION EXISTS
  redis-server
elif [[ $1 == stop ]]; then
  redis-cli shutdown
  echo "Redis server stopped"
elif [[ $1 == restart ]]; then
  redis-cli shutdown && redis-server
elif [[ $1 == config ]]; then
  atom /Users/jesseweed/redis.conf
elif [[ $1 == ping ]]; then
  redis-cli ping
fi
}

# FNM Settings
# https://github.com/Schniz/fnm
eval "$(fnm env)"
