#!/bin/bash

MY_DIR="$(cd "$(dirname "$0")" 1>/dev/null 2>/dev/null && pwd)"  
cd ${MY_DIR}  

cd SOURCES
rm -rf anbox-d20e89649dd85fd59bef409363ba971c4fad54d5
mkdir -p anbox-d20e89649dd85fd59bef409363ba971c4fad54d5

cd anbox-d20e89649dd85fd59bef409363ba971c4fad54d5
git init
git remote add origin https://github.com/anbox/anbox.git
git fetch
git checkout -b master d20e89649dd85fd59bef409363ba971c4fad54d5
git submodule update --init --recursive
rm -rf .git

cd ..
rm -rf anbox-d20e89649dd85fd59bef409363ba971c4fad54d5.zip
zip anbox-d20e89649dd85fd59bef409363ba971c4fad54d5.zip -r anbox-d20e89649dd85fd59bef409363ba971c4fad54d5

rm -rf anbox-d20e89649dd85fd59bef409363ba971c4fad54d5