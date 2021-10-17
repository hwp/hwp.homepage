#!/bin/bash
set -e 

HOST=italix27

[ -x "$(which hugo)" ] || PATH="$HOME/.local/bin:$PATH"

rm -rf public 
hugo 
rsync -avz --delete --exclude=hidden public/ "${HOST}:~/workspace/hwp.github.io"
