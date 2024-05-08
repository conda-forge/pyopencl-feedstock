#!/bin/bash

set -ex

./configure.py --cl-inc-dir=$PREFIX/include --cl-lib-dir=$PREFIX/lib --cl-libname=OpenCL

cat siteconf.py

# python setup.py install --single-version-externally-managed --record record.txt

export CXXFLAGS=-O2

export VERBOSE=1

$PYTHON -m pip install . -vv --no-deps --no-build-isolation
