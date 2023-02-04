VER="300"

THX_VAR='sudo /bin/bash -c "$(curl https://raw.githubusercontent.com/aarikpokras/lexicon/main/install.sh)"'
if [ $(curl https://raw.githubusercontent.com/aarikpokras/lexicon/main/VERSION) != "$VER" ];then printf "Please update LexiCon. You can run\n\n$THX_VAR\n\nto update.\n"; else echo "LexiCon is up to date. (v$VER)";echo "DEBUG:";echo "PC: $(curl https://raw.githubusercontent.com/aarikpokras/lexicon/main/VERSION)"; fi
# Keep in mind that GitHub Raw takes five minutes to propagate (or rather to un-cache)
