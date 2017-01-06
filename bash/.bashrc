PATH="/home/hipek/.xmonad/bin:$PATH"
export PATH
alias dir='ls --color=auto'
alias grep='grep --colour=auto'
alias ll='ls -l'
alias ls='ls --color=auto'
alias lh='ls -lha'
alias l*='ls -lhHa *'
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
alias cd..='cd ../..'
alias cd...='cd ../../..'
alias cd....='cd ../../../..'
alias cd.3='cd ../../../'
alias cd.4='cd ../../../../'
alias cd.5='cd ../../../../../'
alias tunemahgita='for n in E2 A2 D3 G3 B3 E4;do play -n synth 4 pluck $n repeat 2;done'
alias mp='setTitle ncmpcpp; ncmpcpp; setTitle Terminal'
alias x='xdg-open'
shopt -s autocd
shopt -s checkwinsize
export HISTCONTROL=ignorespace
export HISTCONTROL=ignoredups
export HISTSIZE=100000
export HISTFILESIZE=100000
history -a

setTitle() { 
    echo -ne "\033]0;${1}\007"
}
set_prompt () {
Last_Command=$? # Must come first!

	Cyan='\e[36m'
    Blue='\[\e[01;34m\]'
    White='\[\e[01;37m\]'
    Red='\[\e[01;31m\]'
    Green='\[\e[01;32m\]'
    Reset='\[\e[00m\]'
    FancyX='\342\234\227'
    Checkmark='\342\234\223'
	IRed='\[\e[1;91m\]'
    FBLK="\[\033[30m\]" # foreground black
    FRED="\[\033[31m\]" # foreground red
    FGRN="\[\033[32m\]" # foreground green
    FYEL="\[\033[33m\]" # foreground yellow
    FBLE="\[\033[34m\]" # foreground blue
    FMAG="\[\033[35m\]" # foreground magenta
    FCYN="\[\033[36m\]" # foreground cyan
    FWHT="\[\033[37m\]" # foreground white
    # Add a bright white exit status for the last command

    #PS1="$White\$? "
    # If it was successful, print a green check mark. Otherwise, print
    # a red X.
    if [[ $Last_Command == 0 ]]; then
        PS1="$Green $Checkmark 0 $Checkmark"
    else
        PS1="$Red $FancyX $Last_Command $FancyX"
    fi
    # If root, just print the host in red. Otherwise, print the current user
    # and host in green.
	time=`date +%H:%M:%S`
    if [[ $EUID == 0 ]]; then
        PS1+="$Cyan $time $Red\\h "
    else
        PS1+="$Cyan $time $Blue\\u@$FGRN\\h "
    fi
    # Print the working directory and prompt marker in blue, and reset
    # the text color to the default.
    PS1+="$White\\w >>$Reset\n"
}
PROMPT_COMMAND='set_prompt; history -a'

# added by Anaconda3 2.4.1 installer
export PATH="/home/hipek/.rakudobrew/bin:/home/hipek/.rakudobrew/moar-nom/install/share/perl6/site/bin:/root/.perl6/bin/:$PATH"
export PATH=/home/hipek/anaconda3/bin:$PATH
source activate python2_mpd
#export PATH=/media/hipek/pen2/miniconda3/bin:$PATH
# Yavide alias
alias yavide="gvim --servername yavide -f -N -u /opt/yavide/.vimrc"
