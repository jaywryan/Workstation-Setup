
xargs brew cask install < Mac/brew-cask.txt
sudo chown -R $(whoami) /usr/local/lib/pkgconfig
xargs brew install < brew.txt

# pip3 install powerline-status
# Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

git config --global user.email "jayw.ryan@gmail.com"
git config --global user.name "Jay Ryan"