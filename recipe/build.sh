#!/bin/bash

set -ex

export CL_INC_DIR=$PREFIX/include
export CL_LIB_DIR=$PREFIX/lib
export CL_LIBNAME=OpenCL

$PYTHON -m pip install . -vv
