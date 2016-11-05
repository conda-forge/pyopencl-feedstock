"%PYTHON%" configure.py --cl-inc-dir=%LIBRARY_INC% --cl-lib-dir=%LIBRARY_LIB%
if errorlevel 1 exit 1
"%PYTHON%" setup.py build --compiler=mingw32
if errorlevel 1 exit 1
"%PYTHON%" setup.py build_ext --compiler=mingw32
if errorlevel 1 exit 1
"%PYTHON%" setup.py install  --single-version-externally-managed --record record.txt
