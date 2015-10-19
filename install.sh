#!/bin/bash -eu
set -e

for f in .??*
do
	[[ "$f" == ".git" ]] && continue
	[[ "$f" == ".DS_Store" ]] && continue

	echo "$f"
	if [ -e ~/"$f" ] || [ -h ~/"$f" ]; then
		mkdir -p ~/bak/`date +%y%m%d_%H%M%S`
		mv ~/"$f" ~/bak/`date +%y%m%d_%H%M%S`
	fi
	ln -s ~/dotfiles/"$f" ~/"$f"
done
