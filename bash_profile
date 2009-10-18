. $HOME/.bashrc
sudo xmodmap -e "keycode 115 = Super_L" -e "add mod4 = Super_L" ##This is to detect my Super_L key :P ##
#sudo xmodmap -e "keycode 111 = Multi_key" -e "add mod4 = Multi_key" ##This is to detect my Super_L key :P ##
sudo chgrp -R audio /dev/snd/* ## Change the group to which the sound belongs ##

## GIT PREFERENCE ##

GIT_EXEC_PATH=`pwd`
PATH=`pwd`:$PATH
GITPERLLIB=`pwd`/perl/blib/lib
export GIT_EXEC_PATH PATH GITPERLLIB
