
```bash
ln -s ~/myworks-github/dotfiles/_vimrc ~/.vimrc
ln -s ~/myworks-github/dotfiles/_gvimrc ~/.gvimrc
ln -s ~/myworks-github/dotfiles/.vrapperrc ~/.vrapperrc
ln -s ~/myworks-github/dotfiles/.bashrc ~/.bashrc

mkdir ~/.vim/tmp

git clone https://github.com/tomasr/molokai /tmp/molokai
cp -Rp /tmp/molokai/colors ~/.vim/

curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > /tmp/install.sh
sh /tmp/install.sh

# add to .bash_profile
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi
```
