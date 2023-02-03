# LexiCon
A small AI engine that can process simple lingual phrases and learn from the user.

## Teaching it stuff and getting that information
To teach it something, type `learn` and hit enter.

To find out what something is, you can type `what's a pool` or `what is Apple`

Learn files are stored in `LearnEngine/[learnfile]`
#
Feel free to fork this repo, edit the code, and do a pull request.

For more information, run `./run.pl` and type `m`.

## Installing it as a command (Recommended)
Sorry I couldn't make a script for this, but here's some stuff to do if you want to run `lexicon` as a terminal command.

1. Download the main branch zip.
2. Unzip it in `/usr/local/bin`.
3. Move all the files out of the folder and delete the folder.
4. Run `cd && lexicon`

In other words, download the zip, unzip it in /usr/local/bin, and run this:
```bash
cd /usr/local/bin/lexicon-main && mv * .. && cd && lexicon
```
