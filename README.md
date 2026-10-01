# Arch Linux & XFCE Environment Setup

A personalized, lightweight, and efficient Arch Linux development and daily-driver environment optimized for performance, resourcefulness, and seamless networking.

---

## 🛠️ System Architecture & Stack

* **Operating System:** Arch Linux (Rolling Release)
* **Desktop Environment:** XFCE (Lightweight, modular, and highly customizable)
* **Shell & Terminal:** Bash / Zsh with custom tooling and aliases
* **Network Management:** NetworkManager (`nmcli`) for robust wired, wireless, and tethered connectivity

---

## 🚀 Key Features & Highlights

### 1. Tailored XFCE Workstation
* Configured for minimal resource overhead while maintaining high productivity.
* Custom panel layouts, keyboard shortcuts, and window manager tweaks for a streamlined workflow.

### 2. Advanced Network & Tethering Management (`nmcli`)
* Leverages NetworkManager via the command line (`nmcli`) to manage multi-interface networking, mobile data tethering, and connection failovers seamlessly.
* Scripted routines to monitor and verify interface status (`nmcli device status`, `nmcli connection show`) instantly from the terminal.

### 3. Modular System Configuration
* Organized dotfiles and configuration scripts designed for rapid deployment, system recovery, and maintenance.

---

## 📂 Repository Structure

```text
├── .config/             # Application configurations (XFCE settings, terminal, etc.)
├── scripts/             # Automation and network/tethering helper scripts
└── README.md            # Documentation and project overview
