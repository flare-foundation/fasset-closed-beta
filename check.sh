#!/bin/bash

address=0x9918232c924ad3d4D793CF8a702eC60F11eA7E1A
agents=$(./user-bot.sh agents --all -f FSimCoinX | grep -Eo ^[0-9a-zA-Z]{42})

export RED='\033[0;31m'
export GREEN='\033[0;32m'
export WHITE="\033[0;37m"
export NC='\033[0m' # No Color
export REDBOLD="${RED}$(tput bold)"
export GREENBOLD="${GREEN}$(tput bold)"
export WHITEBOLD="${WHITE}$(tput bold)"
export NCNORMAL="${NC}$(tput sgr0)"

if echo "$agents" | grep -q "$address"; then
  echo -e "${GREENBOLD}Correct configuration setup! (agent ${address})${NC}"
else
  echo -e "${REDBOLD}Invalid configuration setup! (active agent ${agents} expected ${address})   ${NC}"
fi
