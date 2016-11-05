python configure.py --cl-inc-dir=%LIBRARY_INC% --cl-lib-dir=%LIBRARY_LIB%
python setup.py install  --compiler=mingw32 --single-version-externally-managed --record record.txt
