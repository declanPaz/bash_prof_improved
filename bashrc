alias c='clear'
alias h='history'
alias q='quit'
alias j='jobs -l'
alias subl='subl .'
alias cd..='cd ..'
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'
alias ..='cd ../' # Go back 1 directory level
alias ...='cd ../../' # Go back 2 directory levels
alias .3='cd ../../../' # Go back 3 directory levels
alias .4='cd ../../../../' # Go back 4 directory levels
alias .5='cd ../../../../../' # Go back 5 directory levels
alias .6='cd ../../../../../../' # Go back 6 directory levels
#cic: Make tab-completion case-insensitive
alias cic='set completion-ignore-case On' 
#go home!
alias home="cd ~/" 
#networking
# myIP: Public facing IP Address
alias myIP='curl ip.appspot.com'
# netCons: Show all open TCP/IP sockets
alias netCons='lsof -i' 
alias flushDNS='dscacheutil -flushcache' # flushDNS: Flush out the DNS Cache
alias lsock='sudo /usr/sbin/lsof -i -P' # lsock: Display open sockets
alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP' # lsockU: Display only open UDP sockets
alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP' # lsockT: Display only open TCP sockets
alias ipInfo0='ipconfig getpacket en0' # ipInfo0: Get info on connections for en0
alias ipInfo1='ipconfig getpacket en1' # ipInfo1: Get info on connections for en1
alias openPorts='sudo lsof -i | grep LISTEN' # openPorts: All listening connections
alias showBlocked='sudo ipfw list' # showBlocked: All ipfw rules inc/ blocked IPs
# Stop after sending count ECHO_REQUEST packets #
alias ping='ping -c 5'
# Do not wait interval 1 second, go fast #
alias fastping='ping -c 100 -s.2'
alias ports='netstat -tulanp'
## pass options to free ## 
alias meminfo='free -m -l -t'
## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
## Get server cpu info ##
alias cpuinfo='lscpu'
## get GPU ram on desktop / laptop## 
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups

# default editor
export EDITOR=subl

#check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# spotlight: Search for a file using MacOS Spotlight's metadata
# -----------------------------------------------------------
spotlight () { mdfind "kMDItemDisplayName == '$@'wc"; }

# myPs: List processes owned by my user:
# ------------------------------------------------------------
myPs() { ps $@ -u $USER -o pid,%cpu,%mem,start,time,bsdtime,command ; }

# screensaverDesktop: Run a screensaver on the Desktop
# -----------------------------------------------------------------------------------
alias screensaverDesktop='/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background'


alias hEdit='sudo edit /etc/hosts' # hEdit: Edit /etc/hosts file
httpHeaders () { /usr/bin/curl -I -L $@ ; } # httpHeaders: Grabs headers from web page

# httpDebug: Download a web page and show info on what took time
# -------------------------------------------------------------------
httpDebug () { /usr/bin/curl $@ -o /dev/null -w "dns: %{time_namelookup} connect: %{time_connect} pretransfer: %{time_pretransfer} starttransfer: %{time_starttransfer} total: %{time_total}\n" ; }

# Always list directory contents upon 'cd'
cd() { builtin cd "$@"; ls; }

#Moves a file to the MacOS trash
trash () { command mv "$@" ~/.Trash ; } 

gitCreate () {
	git init
	CD=${PWD##*/}  
	USER=`git config github.user`
	TOKEN=$(git config github.token)
	https://github.com/$USER/$CD.git
	git remote set-url origin https://github.com/$USER/$CD.git
	git push --set-upstream origin master
}















