#!/usr/bin/env bash
set -euo pipefail

# Colors
RE='\e[0;31m'
GR='\e[0;32m'
BL='\e[0;34m'
NC='\e[0m' # No Color

# Commands

cm1='curl -L https://raw.githubusercontent.com/xyizko/xo-rel-s-rd/refs/heads/main/filez/docker_cleanup.sh | bash'

b1() {
    tx1='
----------------------------------------------------------------------
Script for cleanign and removing all docker panty
downloads the script from
https://github.com/xyizko/xo-rel-s-rd/blob/main/filez/docker_cleanup.sh
----------------------------------------------------------------------
    '
    clear
    echo -e "${GR}${tx1}${NC}"
    echo -e "$cm1"
}

c1() {
    curl -L https://raw.githubusercontent.com/xyizko/xo-rel-s-rd/refs/heads/main/filez/docker_cleanup.sh | bash
}

# Execution Sequenc
b1
c1
