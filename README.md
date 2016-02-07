
```bash
ln -s ~/Documents/myworks-github/dotfiles/_vimrc ~/.vimrc
ln -s ~/Documents/myworks-github/dotfiles/_gvimrc ~/.gvimrc
ln -s ~/Documents/myworks-github/dotfiles/.vrapperrc ~/.vrapperrc

mkdir ~/.vim/tmp

mkdir ~/.vim/colors
git clone https://github.com/tomasr/molokai /tmp/
cp -p /tmp/molokai/colors ~/.vim/

curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > /tmp/install.sh
sh /tmp/install.sh

# add to .bash_profile
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi
```
