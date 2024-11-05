#!/usr/bin/env bash
set -euo pipefail

# Colors
RE='\e[0;31m'
GR='\e[0;32m'
BL='\e[0;34m'
NC='\e[0m' # No Color

# commands

b1() {
    clear
    tx1='
----------------------------------------------------------------------
22 Assignment- Doing multipe containers
----------------------------------------------------------------------'
    cm1='docker container run --publish 80:80 --detach nginx'
    echo -e "${GR}${tx1}${NC}"
    echo -e "$cm1"

}

e1() {
    echo -e "${RE}Executing command...${NC}"
    $cm1
}

# Execution sequence

e1