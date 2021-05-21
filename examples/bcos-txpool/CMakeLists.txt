# Copyright (c) 2016-2019, Ruslan Baratov
# All rights reserved.

cmake_minimum_required(VERSION 3.2)

# Emulate HunterGate:
include("../common.cmake")

project(download-bcos-txpool)

# DOCUMENTATION_START {
hunter_add_package(bcos-txpool)
find_package(bcos-txpool CONFIG REQUIRED)

add_executable(foo foo.cpp)
# DOCUMENTATION_END }
