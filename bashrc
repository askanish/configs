##--Screen--##
#screen


# Check for an interactive session
[ -z "$PS1" ] && return

PS1='\[\033[1;36m\]\u | \W > \[\033[0m\]'
#export PS1='\[\033[1;33m\][\[\033[1;32m\]\u@\h | \W\[\033[1;33m\]]\[\033[0m\]:\[\033[1;33m\]\$\[\033[0m\] '

export PATH=$PATH:~/bin

##--Aliases--##
alias ls='ls --color=auto'
alias r='reset'
alias x='exit'
alias vi='vim'
alias e='emacs -nw'
alias down='cd /media/Documents/Downloads/'
alias soft='cd /media/Documents/Downloads/Softwares'
alias pacman='sudo pacman'
alias makedwm='cd /media/Documents/Downloads/Decoration/dwm_files/dwm-5.6.1/; sudo make install'
alias godwm='cd /media/Documents/Downloads/Decoration/dwm_files/dwm-5.6.1/'

# PATH
XGRAPH=/media/Documents/ns-allinone-2.34/bin:/media/Documents/ns-allinone-2.34/tcl8.4.18/unix:/media/Documents/ns-allinone-2.34/tk8.4.18/unix:/media/Documents/ns-allinone-2.34/xgraph-12.1/
NS=/media/Documents/ns-allinone-2.34/ns-2.34/
NAM=/media/Documents/ns-allinone-2.34/nam-1.14/
export PATH=$PATH:$XGRAPH:$NS:$NAM

export PATH=$PATH:/media/Documents/ns-allinone-2.34/bin:/media/Documents/ns-allinone-2.34/tcl8.4.18/unix:/media/Documents/ns-allinone-2.34/tk8.4.18/unix:/media/Documents/ns-allin0ne-2.34/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/media/Documents/ns-allinone-2.34/otcl-1.13:/media/Documents/ns-allinone-2.34/lib
export TCL_LIBRARY=$TCL_LIBRARY:/media/Documents/ns-allinone-2.34/tcl8.4.18/library


define()
{
  lynx -dump "http://www.google.com/search?hl=en&q=define%3A+${1}&btnG=Google+Search" | grep -m 5 -w "*"  | sed 's/;/ -/g' | cut -d- -f5 > /tmp/templookup.txt
  if [[ -s  /tmp/templookup.txt ]] ;then    
  until ! read response
  do
	echo "${response}"
  done < /tmp/templookup.txt
  else
	echo "Sorry $USER, I can't find the term \"${1} \""                
  fi    
  rm -f /tmp/templookup.txt
}

ext () 
{
      if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xjvf $1    ;;
            *.tar.gz)    tar xzvf $1    ;;
            *.bz2)       bzip2 -d $1    ;;
            *.rar)       unrar2dir $1    ;;
            *.gz)        gunzip $1    ;;
            *.tar)       tar xf $1    ;;
            *.tbz2)      tar xjf $1    ;;
            *.tgz)       tar xzf $1    ;;
						*.zip)       unzip -d $2 $1     ;;
            *.Z)         uncompress $1    ;;
            *.7z)        7z x $1    ;;
            *.ace)       unace x $1    ;;
            *)           echo "'$1' cannot be extracted via extract()"   ;;
        esac
      else
        echo "'$1' is not a valid file"
      fi
}

compress ()
{
	if [ -d $1 ] ; then
		tar -zcvf $1.tar.gz $1
	else
		echo "'$1' is not a valid file"
	fi
}
