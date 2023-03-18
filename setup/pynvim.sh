#!/usr/bin/env bash

[[ ! `which python3` ]] && echo need install python3 && sudo apt install -y python3
[[ ! `which pip3` ]] && echo need install python3-pip && sudo apt install -y python3-pip

python3 -m pip install pynvim

# vim: ft=sh
