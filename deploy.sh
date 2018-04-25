#!/bin/sh
HOST=italix27
rm -r public && hugo && rsync -avz --delete public/ ${HOST}:~/public
