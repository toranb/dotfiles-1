log_file=~/install_progress_log.txt

sudo apt-get -y install zsh
if type -p zsh > /dev/null; then
    echo "zsh Installed" >> $log_file
else
    echo "zsh FAILED TO INSTALL!!!" >> $log_file
fi

sudo apt-get install zsh-syntax-highlighting

sudo apt-get -y install vim
if type -p vim > /dev/null; then
    echo "Vim Installed" >> $log_file
else
    echo "Vim FAILED TO INSTALL!!!" >> $log_file
fi

sudo apt-get -y install exuberant-ctags
if type -p ctags-exuberant > /dev/null; then
    echo "exuberant-ctags Installed" >> $log_file
else
    echo "exuberant-ctags FAILED TO INSTALL!!!" >> $log_file
fi

curl http://beyondgrep.com/ack-v3.5.0 > ~/ack && chmod 0755 !#:3
sudo mv ~/ack /usr/bin/ack
sudo chmod 755 /usr/bin/ack
if type -p ack > /dev/null; then
    echo "Ack Downloaded and Installed" >> $log_file
else
    echo "Ack FAILED TO INSTALL!!!" >> $log_file
fi

sudo apt-get install silversearcher-ag
if type -p ag > /dev/null; then
    echo "Silver searcher Installed" >> $log_file
else
    echo "Silver searcher FAILED TO INSTALL!!!" >> $log_file
fi

sudo apt-get -y install tmux
if type -p tmux > /dev/null; then
    echo "tmux Installed" >> $log_file
else
    echo "tmux FAILED TO INSTALL!!!" >> $log_file
fi

#==============
# Give the user a summary of what has been installed
#==============
echo -e "\n====== Summary ======\n"
cat $log_file
echo
echo "Enjoy -Jarrod"
rm $log_file
