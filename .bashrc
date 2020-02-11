# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific aliases and functions
#alias ls='ls -F '
alias ls='ls -F --color'
alias lt='ls -lt'
alias la='ls -al'
alias ll='ls -alF'
alias cls="clear"
alias clt="clear;ls -rt"

export LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lz=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.axv=01;35:*.anx=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.axa=00;36:*.oga=00;36:*.spx=00;36:*.xspf=00;36:'


#Logging of Terminal sessions
if [ -z "$UNDER_SCRIPT" ]; then
        logdir=$HOME/terminal-logs
        if [ ! -d $logdir ]; then
                mkdir $logdir
        fi
#        gzip -q $logdir/*.log
        logfile=$logdir/$(date +%F_%R).$$.log
        export UNDER_SCRIPT=$logfile
        script -f -q $logfile
        exit
fi

#my aliases
alias cls="clear"
alias vi="vim"
alias gos="/home/jonjpbm/scripts/gos.sh"
alias ops="ssh jduarte@NMS02.MGMT.BWI01.consert.com"
alias tmlg="/home/jonjpbm/scripts/logs_compress.sh"
alias utl="ssh jduarte@util01.mgmt.bwi01.consert.com"
alias rsjim="rsync -r -a -v -e \"ssh -l jduarte\" --delete util01.mgmt.bwi01.consert.com:/home/support/*.p* /home/jonjpbm/scripts/perl/Jims_perl_rsync/"
alias rsme="rsync -r -a -v -e \"ssh -l jduarte\" --delete util01.mgmt.bwi01.consert.com:/home/bwi01/jduarte/util/scripts/* /home/jonjpbm/scripts/perl/util_perl_rsync"
alias dvinfo="/home/jonjpbm/scripts/perl/dv_info.pl"
alias chrome="/opt/google/chrome/google-chrome"
alias getfile="/home/jonjpbm/scripts/getfile.sh"
alias sercon="/home/jonjpbm/scripts/screen_serial_con.sh"
alias np="vi /home/jonjpbm/notepad"
alias grep='grep --color=auto'

