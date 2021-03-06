COMMON_DIR=/home/scalene/common/

STL_DIR=$(COMMON_DIR)STLport
STL_INC=$(STL_DIR)/stlport
BOOST_DIR=$(COMMON_DIR)boost
BOOST_INC=$(BOOST_DIR)
LOG4CPP_DIR=$(COMMON_DIR)log4cpp
LOG4CPP_INC=$(LOG4CPP_DIR)/include
SQLITE_DIR=$(COMMON_DIR)sqlite
SQLITE_INC=$(SQLITE_DIR)
CURL_DIR=$(COMMON_DIR)curl
CURL_INC=$(CURL_DIR)/include
ZLIB_DIR=$(COMMON_DIR)zlib
ZLIB_INC=$(ZLIB_DIR)

GTEST_DIR=$(COMMON_DIR)gtest
GTEST_INC=$(GTEST_DIR)/include
GMOCK_DIR=$(COMMON_DIR)gmock
GMOCK_INC=$(GMOCK_DIR)/include

LIB=/usr/local/lib/libstlport.so
LIB_PARAMS=$(foreach d, $(LIB), $d)

INC=$(BOOST_INC) $(LOG4CPP_INC) $(SQLITE_INC) $(CURL_INC) $(ZLIB_INC) $(GTEST_INC) $(GTEST_DIR) $(GMOCK_INC)
INC_PARAMS=$(foreach d, $(INC), -I$d)

GPP=g++ -Wall -pthread $(INC_PARAMS) $(LIB_PARAMS)