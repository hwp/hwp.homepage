#!/bin/sh
HOST=localhost
rm -r public && hugo && rsync -avz --delete --exclude=hidden public/ "${HOST}:~/workspace/hwp.github.io"
