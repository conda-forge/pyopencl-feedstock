set CL_INC_DIR=%LIBRARY_INC%
set CL_LIB_DIR=%LIBRARY_LIB%

"%PYTHON%" -m pip install -vv .
if errorlevel 1 exit 1
