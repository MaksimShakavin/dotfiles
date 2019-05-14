#!/bin/zsh
[ -r ~/.ssh/config.local ] && _ssh_config=($(cat ~/.ssh/config.local | sed -ne 's/Host[=\t ]//p')) || _ssh_config=()
zstyle ':completion:*:hosts' hosts $_ssh_config
