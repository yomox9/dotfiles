#!/bin/bash
set -e

for f in .??*
do
	[[ "$f" == ".git" ]] && continue
	[[ "$f" == ".DS_Store" ]] && continue

	echo "$f"
	if [ -e ~/"$f" ] || [ -h ~/"$f" ]
		then rm -i ~/"$f"
	fi
	ln -s ~/dotfiles/"$f" ~/"$f"
done
