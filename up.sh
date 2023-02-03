VER="230"
if [ $(curl https://raw.githubusercontent.com/aarikpokras/lexicon/main/VERSION) != "$VER" ];then echo "Please update LexiCon."; else echo "LexiCon is up to date. (v$VER)"; fi
