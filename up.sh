VER="232"
if [ $(curl https://raw.githubusercontent.com/aarikpokras/lexicon/main/VERSION) != "$VER" ];then echo "Please update LexiCon."; else echo "LexiCon is up to date. (v$VER)";echo "DEBUG:";echo "PC: $(curl https://raw.githubusercontent.com/aarikpokras/lexicon/main/VERSION)"; fi
