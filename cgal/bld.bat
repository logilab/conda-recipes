:: Find packages in Anaconda locations
set CMAKE_PREFIX_PATH=%LIBRARY_PREFIX%

cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%" -DMPFR_INCLUDE_DIR="%LIBRARY_INC%" -DGMP_INCLUDE_DIR="%LIBRARY_INC%" -DBOOST_INCLUDEDIR="%LIBRARY_INC%" -DZLIB_INCLUDE_DIR="%LIBRARY_INC%" -DWITH_CGAL_Qt4=0 .
cmake --build . --target install --config Release

cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%" -DMPFR_INCLUDE_DIR="%LIBRARY_INC%" -DGMP_INCLUDE_DIR="%LIBRARY_INC%" -DBOOST_INCLUDEDIR="%LIBRARY_INC%" -DZLIB_INCLUDE_DIR="%LIBRARY_INC%" -DWITH_CGAL_Qt4=0 .
cmake --build . --target install --config Debug
