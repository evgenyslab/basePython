#!/bin/bash
# setup some colors:
BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

if [ -d ".venv" ]; then
  echo -e "Virtaul env ${GREEN}exists${NC}."
  rm -r .venv
else
  echo -e "Virtaul env ${RED}does not exists${NC}."
fi

if [ $# -eq 0 ]; then
	echo -e "${RED}No python selected${NC}, defaulting to ${GREEN}3.5${NC}"
	version=3.5
else
    if [ $1 -eq 2 ]; then
        echo -e "Using Python ${GREEN}2.7${NC}"
        version=2.7
    fi

    if [ $1 -eq 3 ]; then
        echo -e "Using Python ${GREEN}3.5${NC}"
        version=3.5
fi
fi


echo -e "${CYAN}Creating new virtual env in /.venv${NC}"
virtualenv -p /usr/bin/python${version} .venv
source ./.venv/bin/activate
pip -q install -r requirements.txt

