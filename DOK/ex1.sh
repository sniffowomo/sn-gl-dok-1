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
Using docker start a nginx container by pulling it down from docker hub
----------------------------------------------------------------------'
    cm1='docker container run --publish 80:80 --detach nginx'
    echo -e "${GR}${tx1}${NC}"
    echo -e "$cm1"

}

e1() {
    echo -e "${RE}Executing command...${NC}"
    $cm1
}

e2() {
    clear
    c2='docker container run --publish 80:80 --detach --name pantysmell nginx'
    echo -e "${BL}Executing command...${NC}"
    echo -e "$c2"

    $c2
}

# Execution sequence

e2
