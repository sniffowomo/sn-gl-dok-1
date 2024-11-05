#!/usr/bin/env bash
set -euo pipefail

# Colors
RE='\e[0;31m'
GR='\e[0;32m'
BL='\e[0;34m'
NC='\e[0m' # No Color

# Variables
k1='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'
c1=$(export GROQ_API_KEY="${k1}")
t1='
---------------------
Setting the groqPANTY
---------------------
'
# Commands
b1() {
    echo -e "${BL}${t1}${NC}"
}

s1() {
    echo -e "${RE} $c1 ${NC}"
    export GROQ_API_KEY="${k1}"
    echo $GROQ_API_KEY
}

# Execute commands
b1
s1
