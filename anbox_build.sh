#!/bin/bash

MY_DIR="$(cd "$(dirname "$0")" 1>/dev/null 2>/dev/null && pwd)"  
cd ${MY_DIR}  

# sudo mv /usr/bin/cmake /usr/bin/cmake.bak
# sudo ln -s /root/Downloads/cmake-3.18.6-Linux-x86_64/bin/cmake /usr/bin/cmake

rpmbuild --bb --define "debug_package %{nil}" "${MY_DIR}/SPECS/anbox.spec"