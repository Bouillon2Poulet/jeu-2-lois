# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "C:/Documents/IMAC2/S4/Maths_Proba/jeu-2-lois/cmake-build-debug/_deps/doctest-src"
  "C:/Documents/IMAC2/S4/Maths_Proba/jeu-2-lois/cmake-build-debug/_deps/doctest-build"
  "C:/Documents/IMAC2/S4/Maths_Proba/jeu-2-lois/cmake-build-debug/_deps/doctest-subbuild/doctest-populate-prefix"
  "C:/Documents/IMAC2/S4/Maths_Proba/jeu-2-lois/cmake-build-debug/_deps/doctest-subbuild/doctest-populate-prefix/tmp"
  "C:/Documents/IMAC2/S4/Maths_Proba/jeu-2-lois/cmake-build-debug/_deps/doctest-subbuild/doctest-populate-prefix/src/doctest-populate-stamp"
  "C:/Documents/IMAC2/S4/Maths_Proba/jeu-2-lois/cmake-build-debug/_deps/doctest-subbuild/doctest-populate-prefix/src"
  "C:/Documents/IMAC2/S4/Maths_Proba/jeu-2-lois/cmake-build-debug/_deps/doctest-subbuild/doctest-populate-prefix/src/doctest-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "C:/Documents/IMAC2/S4/Maths_Proba/jeu-2-lois/cmake-build-debug/_deps/doctest-subbuild/doctest-populate-prefix/src/doctest-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "C:/Documents/IMAC2/S4/Maths_Proba/jeu-2-lois/cmake-build-debug/_deps/doctest-subbuild/doctest-populate-prefix/src/doctest-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
