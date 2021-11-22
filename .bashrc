# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -d ~/afs/bin ] ; then
	export PATH=~/afs/bin:$PATH
fi

if [ -d ~/.local/bin ] ; then
	export PATH=~/.local/bin:$PATH
fi

#feh --bg-scale ~/afs/merde4.png
feh --bg-scale ~/afs/merde5portrait.jpg
export LANG=en_US.utf8
export NNTPSERVER="news.epita.fr"

export EDITOR=vim
#export EDITOR=emacs

# Color support for less
#export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
#export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
#export LESS_TERMCAP_me=$'\E[0m'           # end mode
#export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
#export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
#export LESS_TERMCAP_ue=$'\E[0m'           # end underline
#export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

[ -n "$XTERM_VERSION" ] && transset --id "$WINDOWID" 0.7 >/dev/null
alias ф="setxkbmap us"
alias weekend='shutdown -f now'
alias p='cd ~/afs/Piscine/exercices/thibaud.voisin-piscine-2024/'
alias l='ls -l --color=auto'
alias ls='ls --color=auto'
alias grep='grep --color -n'
alias comp='echo  gcc -Wall -Werror -Wextra -std=c99 -pedantic'


bind '"\e[24~":"ls\n"'
bind '"\e[23~":"ls\n"'
bind '"\e[22~":"ls\n"'
bind '"\e[21~":"ls\n"'



alias economique="firefox www.ege.fr"






function _update_ps1() {
    PS1="$($HOME/afs/bin/powerline-go-linux-amd64 -mode compatible -cwd-max-dir-size 22  -east-asian-width   -hostname-only-if-ssh   -newline -cwd-mode dironly  -numeric-exit-codes -colorize-hostname -error $? -jobs $(jobs -p | wc -l))"

    # Uncomment the following line to automatically clear errors after showing
    # them once. This not only clears the error for powerline-go, but also for
    # everything else you run in that shell. Don't enable this if you're not
    # sure this is what you want.

    #set "?"
}

if [ "$TERM" != "linux" ] && [ -f "$HOME/afs/bin/powerline-go-linux-amd64" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi


#export PS1="\[\e[01;38;5;202m\][\[\e[m\]\[\e[01;38;5;202m\]Got->\[\e[m\]\[\e[01;36m\]\e[5m\$?\[\e[m\]\[\e[01;38;5;202m\]]: \[\e[m\]"

#\[\e[01;38;5;202m\]]\[\e[m\]\[\e[01;38;5;202m\]-\[\e[m\]\[\e[01;38;5;202m\][\[\e[m\]\[\e[01;32m\]\u\[\e[m\]\[\e[01;38;5;202m\]:\[\e[m\]\[\e[01;38;5;202m\]\h\[\e[m\]\[\e[01;38;5;202m\]]\[\e[m\]\[\e[01;38;5;202m\]-\[\e[m\]\[\e[01;38;5;202m\][\[\e[m\]\[\e[01;38;5;202m\]\W\[\e[m\]\[\e[01;38;5;202m\]]\[\e[m\]\[\e[01;38;5;202m\]-\[\e[m\]\[\e[01;33m\]\`parse_git_branch\`\[\e[m\]\[\e[01;38;5;202m\]\\$\[\e[m\] "
#PS1="\e[01;38;5;202m[▁ ▄ ▆ █ T̴̤̅̑́̂͛̎̍̈́̂̌h̵͕̲̘̪̹̏̇̏ḯ̴̧̺͖̫̠̯͉̀̂̈͜b̵̧̞̙̩͔̫͚̹̮̓̈å̷̡̱̦̱̝̳̭̪̹͎̓͗̐̂͗͝ŭ̸̼̺͇̗̩̩̏͐͆̏̔͠ḑ̴̨̡̲̫̼̟̤͍͑̃͑̀̃̈́͑̓̑͝ ̵̤̱͍̙͚͔͐̇V̶̤̳̣̣̯̦̓̂͒̽̉̅̍̏o̵̡̯̥̫̻̱̓́̋̓̂̆͝ͅi̴̠͒s̴̲͓̱̳̤̋̆͋̿͑̈́̀͒̋̚ͅḯ̴̛̳͉͓̺̙̼͋̅̌̈͐̿̊͝n̶̩̠̤͔̱̮̜̖͊͝ TᕼIBAᑌD ᐯOISIᑎ█ ▆ ▄ ▁] [\$?-@\u:\W]\\$\[$(tput sgr0)\] "
alias check='rm ~/afs/check.c && touch ~/afs/check.c && for i in $(find -name '*.c'); do  echo -e "\n================================\n" >> ~/afs/check.c && echo $i >> ~/afs/check.c && echo -e "\n================================\n" >> ~/afs/check.c && echo  "$(cat -e $i)" >> ~/afs/check.c; done && vim ~/afs/check.c';
alias gokms='shutdown -f now'

alias i3lock="i3lock -i ~/afs/all_before_ing1/merde2.png"
GOPATH=$HOME/go
#function _update_ps1() {
#    PS1="$($GOPATH/bin/powerline-go -error $?)"
#}

#if [ "$TERM" != "linux" ] && [ -f "$GOPATH/bin/powerline-go" ]; then
#    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
#fi
LS_COLORS='rs=0:di=01;95:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.webp=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:';
export LS_COLORS


