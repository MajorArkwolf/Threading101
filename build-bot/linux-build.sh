#!/bin/sh
git submodule update --init --recursive --depth 1
cmake -S . -B build && cd build && make