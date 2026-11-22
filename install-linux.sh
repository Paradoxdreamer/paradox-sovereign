#!/bin/bash
# Paradox Sovereign - Linux installer helper
# Targets Debian/Ubuntu/Kali

set -e

echo "[*] Paradox Sovereign installer (Linux)"
echo "[*] This will install dependencies and clone upstream Havoc"

sudo apt update
sudo apt install -y git build-essential mingw-w64 nasm golang-go cmake python3 python3-pip \
  qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tools libqt5websockets5-dev \
  libspdlog-dev libboost-all-dev wget curl

if [ ! -d "Havoc" ]; then
  echo "[*] Cloning upstream Havoc..."
  git clone https://github.com/HavocFramework/Havoc.git
fi

cd Havoc

echo "[*] Building teamserver..."
cd teamserver
go mod download
go build -o ../havoc-teamserver
cd ..

echo "[*] Building client (this takes a while)..."
cd client
mkdir -p build && cd build
cmake ..
make -j$(nproc)
cd ../..

echo ""
echo "[+] Done."
echo "    Teamserver binary : ./Havoc/havoc-teamserver"
echo "    Client binary     : ./Havoc/client/build/Havoc"
echo ""
echo "Run teamserver first, then the client."
