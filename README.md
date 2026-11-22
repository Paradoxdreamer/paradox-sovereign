# Paradox Sovereign

Modern, malleable post-exploitation Command & Control framework.

This is a curated Paradox mirror / usage guide for the Havoc Framework, focused on clean terminal and device deployment (Linux, Termux-adjacent, Windows).

**Original upstream:** [HavocFramework/Havoc](https://github.com/HavocFramework/Havoc)

---

## What it is

- Teamserver written in Go
- Cross-platform client (C++ / Qt)
- Highly capable Demon agent (C + ASM) with sleep obfuscation, indirect syscalls, token vault, etc.

---

## Supported Environments

| Environment       | Notes                                                                 |
|-------------------|-----------------------------------------------------------------------|
| **Linux** (Debian/Ubuntu/Kali) | Primary supported. Full teamserver + client.                         |
| **Windows**       | Client works. Teamserver possible via WSL or native Go build.        |
| **Termux**        | Limited. Teamserver can run if Go is installed, but Qt client is painful. Use headless / remote client. |
| **Docker**        | Recommended for clean isolation.                                     |

---

## Quick Start — Linux

```bash
# Dependencies (Debian/Ubuntu/Kali)
sudo apt update
sudo apt install -y git build-essential mingw-w64 nasm golang-go cmake python3 python3-pip \
  qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tools libqt5websockets5-dev \
  libspdlog-dev libboost-all-dev

# Clone
git clone https://github.com/Paradoxdreamer/paradox-sovereign.git
cd paradox-sovereign

# Or pull from upstream if this is just the guide
# git clone https://github.com/HavocFramework/Havoc.git

# Teamserver
cd teamserver
go build -o havoc-teamserver
./havoc-teamserver

# Client (separate terminal)
cd client
mkdir build && cd build
cmake ..
make -j$(nproc)
./Havoc
```

---

## Termux Notes

Termux can run the **teamserver** if you install Go:

```bash
pkg update && pkg install golang git
git clone https://github.com/HavocFramework/Havoc.git
cd Havoc/teamserver
go build -o teamserver
./teamserver
```

The graphical client is not practical on Termux. Connect from a full Linux/Windows box to the Termux-hosted teamserver over the network (use a reverse tunnel or public IP carefully).

---

## Windows

- Install Go + Visual Studio Build Tools / MinGW
- Prefer running the teamserver under WSL2 for best compatibility
- Native client builds are possible but more involved

---

## Safety / Operational Notes

- This is a powerful post-exploitation framework. Use only on systems you own or have explicit authorization to test.
- Sleep obfuscation, indirect syscalls, and hardware breakpoint AMSI/ETW patches are built into the agent.
- Detection research is active — expect EDR attention on unsigned or poorly configured implants.

---

## Paradox Series

Part of the Paradox tool collection:
- **Paradox Sovereign** — C2 (this repo)
- More incoming (Oracle, Phantom, Alloy, etc.)

Stay sharp.
