# Neovim Configuration

This is my personal Neovim configuration. The setup is still under development.


## Dipendenze di sistema richieste

Questa configurazione richiede alcune dipendenze di sistema per funzionare correttamente:

- **Neovim** (>= 0.9)
- **git**
- **make** (necessario per alcuni plugin nativi come telescope-fzf-native)
- **gcc** o **clang** (per compilare plugin nativi)
- **curl** o **wget**
- **node** e **npm** (per plugin LSP, formatter, copilot, ecc.)
- **python3** e **pip**

### Installazione delle dipendenze su Ubuntu/Debian

```sh
sudo apt update
sudo apt install neovim git make gcc curl nodejs npm python3 python3-pip
```

### Installazione delle dipendenze su Arch Linux

```sh
sudo pacman -Syu neovim git make gcc curl nodejs npm python-pip
```

### Installazione delle dipendenze su MacOS (Homebrew)

```sh
brew install neovim git make gcc curl node npm python3
```

Assicurati di avere queste dipendenze installate prima di avviare Neovim per la prima volta.

## Installation



To install this configuration, run:

```sh
git clone https://github.com/filfai1003/nvim ~/.config/nvim
```

Feel free to try it out and let me know what you think!

## TODO
- Harpoon
- Undo tree
- Copilot
- Preconfigured support for LSP, DAP, Linter, Formatter for some languages

