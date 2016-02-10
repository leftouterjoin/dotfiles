```bash
ln -s ~/myworks-github/dotfiles/_vimrc ~/.vimrc
ln -s ~/myworks-github/dotfiles/_gvimrc ~/.gvimrc
ln -s ~/myworks-github/dotfiles/.vrapperrc ~/.vrapperrc
ln -s ~/myworks-github/dotfiles/.bashrc ~/.bashrc
ln -s ~/myworks-github/dotfiles/.bashrc_mac ~/.bashrc_mac

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

```dos
mklink %userprofile%\.vimrc D:\myworks-github\dotfiles\_vimrc
mklink %userprofile%\.gvimrc D:\myworks-github\dotfiles\_gvimrc
mklink %userprofile%\.vrapperrc D:\myworks-github\dotfiles\.vrapperrc
mklink %userprofile%\.bashrc D:\myworks-github\dotfiles\.bashrc
mklink %userprofile%\.bashrc_win D:\myworks-github\dotfiles\.bashrc_win
mklink %userprofile%\cu D:\myworks-github\dotfiles\cu
```

```bash
cp -Rp /usr/share/vim/vim74-kaoriya-win64/vim74/syntax ~/.vim/
cp -p /usr/share/vim/vim74-kaoriya-win64/vim74/filetype.vim ~/.vim/
```

```dos
cd C:\Windows\System32
mklink diff.exe "C:\Program Files\Git\usr\bin\diff.exe"
mklink msys-iconv-2.dll "C:\Program Files\Git\usr\bin\msys-iconv-2.dll"
mklink msys-2.0.dll "C:\Program Files\Git\usr\bin\msys-2.0.dll"
mklink msys-intl-8.dll "C:\Program Files\Git\usr\bin\msys-intl-8.dll"
```
