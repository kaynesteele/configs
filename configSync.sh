if [[ ! $(command -v vim) ]]; then
    sudo apt install vim
fi

if [[ ! $(command -v ranger) ]]; then
    sudo apt install ranger
fi

cp -r ~/test/wallpapers ~/wallpapers
cat ~/test/status.sh > ~/status.sh
cat ~/test/Xdefaults > ~/.Xdefaults
cat ~/test/xinitrc > ~/.xinitrc
cat ~/test/bash_aliases > ~/.bash_aliases
sudo cp ~/test/vimrc /etc/vim/vimrc
sudo cp ~/test/rc.conf /etc/ranger/config/rc.conf
sudo cp ~/test/sources.list /etc/apt/sources.list 
