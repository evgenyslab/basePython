#!/bin/bash
# setup some colors:
BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color
echo -e "${CYAN}Updating virtual env with new requirements${NC}"
pip -q install -r requirements.txt
