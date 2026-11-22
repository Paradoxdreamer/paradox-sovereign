#!/bin/bash
# Simple launcher for Paradox Sovereign teamserver

if [ -f "./havoc-teamserver" ]; then
  ./havoc-teamserver
elif [ -f "./Havoc/havoc-teamserver" ]; then
  ./Havoc/havoc-teamserver
elif [ -f "./Havoc/teamserver/teamserver" ]; then
  ./Havoc/teamserver/teamserver
else
  echo "[-] Teamserver binary not found. Run install-linux.sh or install-termux.sh first."
  exit 1
fi
