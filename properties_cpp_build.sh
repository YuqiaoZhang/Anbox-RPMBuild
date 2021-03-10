#!/bin/bash

MY_DIR="$(cd "$(dirname "$0")" 1>/dev/null 2>/dev/null && pwd)"  
cd ${MY_DIR}  

rpmbuild --bb --define "debug_package %{nil}" "${MY_DIR}/SPECS/properties-cpp.spec"