VER="301"

THX_VAR='sudo /bin/bash -c "$(curl https://raw.githubusercontent.com/aarikpokras/lexicon/main/install.sh)"'

__LNKVR=$(curl https://raw.githubusercontent.com/aarikpokras/lexicon/main/VERSION)
if [ $__LNKVR != "$VER" ];then printf "Please update LexiCon. You can run\n\n$THX_VAR\n\nto update.\nDEBUG:\n$__LNKVR"; else echo "LexiCon is up to date. (v$VER)";echo "DEBUG:";echo "PC: $__LNKVR\n"; fi
# Keep in mind that GitHub Raw takes five minutes to propagate (or rather to un-cache)
