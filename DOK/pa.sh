#!/usr/bin/env bash
set -euo pipefail

# Colors
RE='\e[0;31m'
GR='\e[0;32m'
BL='\e[0;34m'
NC='\e[0m' # No Color

# Variables
cm1='docker run --rm -ti --network host -v $PWD/panty:/panty parrotsec/security'

# commands
b1() {
    clear
    tx1='
----------------------------------------------------------------------
Testign out parrot os from their official website 
https://parrot.run/
----------------------------------------------------------------------'
    echo -e "${GR}${tx1}${NC}"

}

e1() {
    echo -e "${RE}Executing command...${NC}"
    echo -e "${RE} $cm1 ${NC}"
    echo -e "${GR} ---START-START-START-START-START------ ${NC}"
    $cm1
    echo -e "${BL} --------------------------------- ${NC}"
    # $cm4
    echo -e "${RE} ---DONE-DONE-DONE-DONE------ ${NC}"
}

# Execution sequence
b1
e1
