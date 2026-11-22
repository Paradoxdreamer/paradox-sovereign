# Paradox Sovereign

Modern, malleable post-exploitation Command & Control framework.

Curated Paradox operator kit for the Havoc Framework — focused on clean terminal & device deployment.

**Upstream:** [HavocFramework/Havoc](https://github.com/HavocFramework/Havoc)

---

## Files in this repo

| File | Purpose |
|------|---------|
| `install-linux.sh` | Full dependency + build script for Debian/Ubuntu/Kali |
| `install-termux.sh` | Termux teamserver-only installer |
| `start-teamserver.sh` | Simple launcher |
| `README.md` | This file |

---

## Quick Start

### Linux (recommended)

```bash
git clone https://github.com/Paradoxdreamer/paradox-sovereign.git
cd paradox-sovereign
chmod +x install-linux.sh start-teamserver.sh
./install-linux.sh
```

Then in two terminals:

```bash
./start-teamserver.sh
# and
./Havoc/client/build/Havoc
```

### Termux

```bash
git clone https://github.com/Paradoxdreamer/paradox-sovereign.git
cd paradox-sovereign
chmod +x install-termux.sh
./install-termux.sh
./havoc-teamserver
```

Note: Graphical client is not practical on Termux. Run the teamserver on the phone/VPS and connect a real client from a desktop.

---

## What you get

- Teamserver (Go)
- Full Qt client
- Demon agent with sleep obfuscation, indirect syscalls, token vault, etc.

---

## Operational Notes

Use only on systems you own or have explicit written authorization to test.  
This is a real post-exploitation framework — treat it as such.

---

## Paradox Collection

- **Paradox Sovereign** — Havoc C2 (this)
- Paradox Alloy — Sliver
- Paradox Oracle — BloodHound
- Paradox Phantom — Evilginx
- Paradox Packet — Impacket
- + more

Stay sharp.
