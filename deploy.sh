#!/bin/bash
HOST=italix27
rm -rf public && hugo && rsync -avz --delete public/ ${HOST}:~/public
