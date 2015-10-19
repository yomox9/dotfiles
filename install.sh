#!/bin/bash -eu
set -e

for f in .??*
do
	[[ "$f" == ".git" ]] && continue
	[[ "$f" == ".DS_Store" ]] && continue

	echo "$f"
	if [ -e ~/"$f" ] || [ -h ~/"$f" ]; then
		datetime=`date +%Y%m%d_%H%M%S`
		mkdir -p ~/bak/$datetime
		mv ~/"$f" ~/bak/$datetime
	fi
	ln -s ~/dotfiles/"$f" ~/"$f"
done

#y9tool
if [ ! -d ~/y9tool ];then
	echo "download ~/y9tool?(y/n)"
	read ans
	if [ "$ans" = "y" ];then
		pushd ~
		git clone git@github.com:yomox9/y9tool.git
		popd
	fi
fi
