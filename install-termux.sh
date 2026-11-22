#!/data/data/com.termux/files/usr/bin/bash
# Paradox Sovereign - Termux helper
# Note: Full Qt client is not practical on Termux.
# This installs Go + builds the teamserver only.

set -e

echo "[*] Paradox Sovereign - Termux teamserver installer"

pkg update -y
pkg install -y golang git make

if [ ! -d "Havoc" ]; then
  git clone https://github.com/HavocFramework/Havoc.git
fi

cd Havoc/teamserver
go mod download
go build -o ../../havoc-teamserver

echo ""
echo "[+] Teamserver built: ./havoc-teamserver"
echo "[!] Graphical client will not run well on Termux."
echo "    Run the teamserver here and connect a real client from Linux/Windows."
