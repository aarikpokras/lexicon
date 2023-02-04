#FriFeb3
if [ -d "/usr/local/share/man/man1" ]
then
curl -Lo lx.zip https://github.com/aarikpokras/lexicon/archive/refs/heads/main.zip && rsync -a lx.zip /usr/local/bin && cd /usr/local/bin && unzip -o -qq lx.zip && cd lexicon-main && rsync -a * ..
mv /usr/local/bin/lexicon.1 /usr/local/share/man/man1/lexicon.1
printf '\033[1;32mDone!\033[0m\n'
else
printf "\033[1;31mPlease run \n\nmkdir /usr/local/share/man/man1\033[0m\n"
fi
# You're gonna have to wait a little bit for the command to work
