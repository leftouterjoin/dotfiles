```bash
ln -s ~/myworks-github/dotfiles/_vimrc ~/.vimrc
ln -s ~/myworks-github/dotfiles/_gvimrc ~/.gvimrc
ln -s ~/myworks-github/dotfiles/.vrapperrc ~/.vrapperrc
ln -s ~/myworks-github/dotfiles/.bashrc ~/.bashrc
ln -s ~/myworks-github/dotfiles/.bashrc_mac ~/.bashrc_mac
ln -s ~/myworks-github/dotfiles/conf.d ~/.vim/conf.d

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
mklink %userprofile%\.minttyrc D:\myworks-github\dotfiles\.minttyrc
mklink %userprofile%\.vimrc D:\myworks-github\dotfiles\_vimrc
mklink %userprofile%\.gvimrc D:\myworks-github\dotfiles\_gvimrc
mklink %userprofile%\.vrapperrc D:\myworks-github\dotfiles\.vrapperrc
mklink %userprofile%\.bashrc D:\myworks-github\dotfiles\.bashrc
mklink %userprofile%\.bashrc_win D:\myworks-github\dotfiles\.bashrc_win
mklink /D %userprofile%\.vim\conf.d D:\myworks-github\dotfiles\conf.d
mklink %userprofile%\cu D:\myworks-github\dotfiles\cu
mklink "C:\Windows\System32\git-bash.bat" D:\myworks-github\dotfiles\git-bash.bat
```

```bash
#cp -Rp /usr/share/vim/vim80-kaoriya-win64/vim80/syntax ~/.vim/
cp -p /usr/share/vim/vim80-kaoriya-win64/vim80/filetype.vim ~/.vim/
```

```dos
cd C:\Windows\System32
mklink diff.exe "C:\Program Files\Git\usr\bin\diff.exe"
mklink msys-iconv-2.dll "C:\Program Files\Git\usr\bin\msys-iconv-2.dll"
mklink msys-2.0.dll "C:\Program Files\Git\usr\bin\msys-2.0.dll"
mklink msys-intl-8.dll "C:\Program Files\Git\usr\bin\msys-intl-8.dll"
```
