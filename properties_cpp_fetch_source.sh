#!/bin/bash

MY_DIR="$(cd "$(dirname "$0")" 1>/dev/null 2>/dev/null && pwd)"  
cd ${MY_DIR}  

cd SOURCES
rm -rf properties-cpp-45863e849b39c4921d6553e6d27e267a96ac7d77
mkdir -p properties-cpp-45863e849b39c4921d6553e6d27e267a96ac7d77

cd properties-cpp-45863e849b39c4921d6553e6d27e267a96ac7d77
git init
git remote add origin https://github.com/lib-cpp/properties-cpp.git
git fetch
git checkout -b master 45863e849b39c4921d6553e6d27e267a96ac7d77
git submodule update --init --recursive
rm -rf .git

cd ..
rm -rf properties-cpp-45863e849b39c4921d6553e6d27e267a96ac7d77.zip
zip properties-cpp-45863e849b39c4921d6553e6d27e267a96ac7d77.zip -r properties-cpp-45863e849b39c4921d6553e6d27e267a96ac7d77

rm -rf properties-cpp-45863e849b39c4921d6553e6d27e267a96ac7d77