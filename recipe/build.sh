#!/bin/bash

set -ex

./configure.py --cl-inc-dir=$PREFIX/include --cl-lib-dir=$PREFIX/lib --cl-libname=OpenCL

python setup.py install --single-version-externally-managed --record record.txt
