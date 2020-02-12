
xargs brew cask install < brew-cask.txt
sudo chown -R $(whoami) /usr/local/lib/pkgconfig
xargs brew install < brew.txt

brew install python3
# pip3 install powerline-status
# Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

git config --global user.email "jay.ryan@ge.com"
git config --global user.name "Jay Ryan"