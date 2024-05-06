#!/bin/bash

set -ex

./configure.py --cl-inc-dir=$PREFIX/include --cl-lib-dir=$PREFIX/lib --cl-libname=OpenCL

cat siteconf.py

python setup.py install --single-version-externally-managed --record record.txt
