#!/bin/zsh
if [[ -o login && -o interactive ]]; then
	echo "This is an interactive login shell"
elif [[ -o interactive ]]; then
	echo "This is an interactive shell"
elif [[ -o login ]]; then
    echo "This shell is a login shell"
elif [[ ! -o interactive ]]; then
    echo "This shell is a non interactive shell"
else
    echo "Don't recognised shell yet"
fi