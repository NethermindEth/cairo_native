#!/usr/bin/env bash

# This script is only useful on macOS using brew.
# It sets the LLVM environment variables.
export LIBRARY_PATH=/opt/homebrew/lib
MLIR_SYS_180_PREFIX="$(brew --prefix llvm@18)"
LLVM_SYS_180_PREFIX="$(brew --prefix llvm@18)"
TABLEGEN_180_PREFIX="$(brew --prefix llvm@18)"
CAIRO_NATIVE_RUNTIME_LIBRARY="$(pwd)/libcairo_native_runtime.a"

export MLIR_SYS_180_PREFIX
export LLVM_SYS_180_PREFIX
export TABLEGEN_180_PREFIX
export CAIRO_NATIVE_RUNTIME_LIBRARY
