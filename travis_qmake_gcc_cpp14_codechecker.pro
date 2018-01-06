SOURCES += main.cpp

# Compile with high warning levels, a warning is an error
QMAKE_CXXFLAGS += -Wall -Wextra -Wshadow -Wnon-virtual-dtor -pedantic -Weffc++ -Werror

# C++14
CONFIG += c++14
QMAKE_CXXFLAGS += -std=c++14
QMAKE_CC = clang
QMAKE_CXX = clang++
QMAKE_LINK = clang++

#QMAKE_CC = gcc-7
#QMAKE_CXX = g++-7
#QMAKE_LINK = g++-7

# Debug and release mode
CONFIG += debug_and_release

# In release mode, define NDEBUG
CONFIG(release, debug|release) {
  DEFINES += NDEBUG
}
