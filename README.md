# ⚔️ BlackArch-DukeX

A bash script designed to fix pacman keyring issues and install the XFCE desktop environment on **BlackArch Linux**, resolving common package conflicts in the process.

## 🔧 Features

- Resets and repopulates the pacman keyring for Arch and BlackArch.
- Disables the `[community]` repository.
- Force-removes problematic conflicting packages.
- Fully updates the system with `pacman -Syyu`.
- Installs **XFCE4**, LightDM, and necessary network management tools.
- Enables display and networking services.
- Automates post-install configuration of GUI for BlackArch headless systems.

## 📜 Script: `install.sh`

This script performs the following operations:

1. **Reset pacman keyring**
2. **Disable `[community]` repo**
3. **Remove conflicting packages**  
   - `python-typing-extensions`  
   - `python-keras-applications`  
   - `python-keras-preprocessing`  
   - `python-gast03`  
   - `jre11-openjdk`  
   - `jre11-openjdk-headless`
4. **Update package database and upgrade system**
5. **Install XFCE4 and LightDM**
6. **Enable system services**

## ⚠️ Disclaimer

> This script **modifies core system packages** and configuration files.  
> Use with caution and **backup your system** before executing.

---

## 🚀 Usage

chmod +x install.sh

./install.sh

---

## 💻 Requirements

BlackArch Linux (Live or Installed)

Root/sudo privileges

Internet connection

---

## 📬 Contribution

Pull requests are welcome! If you have improvements or bug fixes, feel free to fork the project and submit a PR.

---

## 🔐 License

This project is released under the MIT License (add a license if needed).

---

## 🙋‍♂️ Author

Pushpender Singh Rathore

🔗 GitHub





