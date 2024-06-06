if "%CONDA_PY%"=="27" (
  set COMPILER_FLAG=--compiler=mingw32
) else if "%CONDA_PY%"=="34" (
  set COMPILER_FLAG=--compiler=mingw32
) else (
  set COMPILER_FLAG=
)

set CL_INC_DIR=%LIBRARY_INC%
set CL_LIB_DIR=%LIBRARY_LIB%

if errorlevel 1 exit 1
"%PYTHON%" setup.py build %COMPILER_FLAG%
if errorlevel 1 exit 1
"%PYTHON%" setup.py build_ext %COMPILER_FLAG%
if errorlevel 1 exit 1
"%PYTHON%" setup.py install --single-version-externally-managed --record record.txt
