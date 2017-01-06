alias dir='ls --color=auto'
alias grep='grep --colour=auto'
alias ll='ls -l'
alias ls='ls --color=auto'
alias lh='ls -lha'
alias rtld='find . -maxdepth 1  -type d  -exec du -sh {} \; | sort -hr'
alias wczytaj_ustawienia='cat ~/.config/sejw_ustawien > ~/.config/user-dirs.dirs'
alias czas='date +%H:%M:%S'
alias fucking='sudo'
alias pluton_ssh='ssh pszulc@pluton.kt.agh.edu.pl'
alias odtwórz='cvlc --play-and-exit'
alias volume_full='amixer -D pulse sset Master 100%'
alias volume_mute='amixer -D pulse sset Master 0%'
alias klonuj_radio='git clone https://sdr.kt.agh.edu.pl/developers/sdr.git'
alias terminal='gnome-terminal'
alias mc='mc -b'
alias bim='vim'
alias cd2='cd ../..'
alias cd3='cd ../../../'
alias cd4='cd ../../../../'
alias cd5='cd ../../../../../'
alias tunemahgita='for n in E2 A2 D3 G3 B3 E4;do play -n synth 4 pluck $n repeat 2;done'
alias mp='print -Pn "\e]0;ncmpcpp\a"; ncmpcpp; print -Pn "\e]0;Terminal\a"'
alias x='xdg-open'
alias -g apt-get='aptitude'
alias p6='perl6 -e'
alias pp="curl localhost/play -d "
alias ytp="curl localhost/yt/ -d "
alias wttr='export LOC=`cat ~/.location`; curl wttr.in/$LOC'
alias prove6="prove -e 'perl6 -Ilib' -vr"
alias htg='http -svim GET'
alias htp='http -svim POST'
export TERM="xterm-256color"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

PATH="/home/hipek/.xmonad/bin:$PATH"
export PATH="/home/hipek/.rakudobrew/bin:/home/hipek/.rakudobrew/moar-nom/install/share/perl6/site/bin:$PATH"
export PATH=/home/hipek/anaconda3/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/hipek/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster" # (this is one of the fancy ones)
ZSH_THEME="powerlevel9k" # (this is one of the fancy ones)
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(time context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status rbenv)
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git bundler rake ruby)

source $ZSH/oh-my-zsh.sh

# User configuration

export MANPATH="/home/hipek/anaconda3/share/man:/usr/local/man:/usr/local/share/man:/usr/share/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export PATH="/home/hipek/programs/robomongo-0.9.0-linux-x86_64-0786489/bin:$PATH"
export PATH="/home/hipek/bin:$PATH"
export PATH="/home/hipek/.cargo/bin:$PATH"

