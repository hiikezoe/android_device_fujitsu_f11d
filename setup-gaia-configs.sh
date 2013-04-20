#!/bin/sh
CURRENT_DIR=$(cd $(dirname "$0") && pwd)
GAIA_BASE_DIR=../../../gaia

ln -sf $CURRENT_DIR/gaia/local.mk $GAIA_BASE_DIR
