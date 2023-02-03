# LexiCon
A small AI engine that can process simple lingual phrases and learn from the user.

## Teaching it stuff and getting that information
To teach it something, type `learn` and hit enter.

To find out what something is, you can type `what's a pool` or `what is Apple`

Learn files are stored in `LearnEngine/[learnfile]`
#
Feel free to fork this repo, edit the code, and do a pull request.

For more information, see the manpage.

## Installing it as a command (Recommended)
You're gonna need `rsync`. You probably already have it (Ubuntu and other Linux distros come with it installed).

```console
sudo apt-get install rsync
```
```console
brew install rsync
```

To get it as a command, you can run this: 
```bash
curl -Lo lx.zip https://github.com/aarikpokras/lexicon/archive/refs/heads/main.zip && rsync -a lx.zip /usr/local/bin && unzip lx.zip && cd lexicon-main && rsync -a * .. && cd
```
Then run `lexicon`. It should work.
