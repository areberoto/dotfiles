# 💻 My Dotfiles

This repo tracks my personal configuration files (dotfiles) using a **bare Git repository** method. It keeps `$HOME` clean and avoids symlinks or nested folders.

---

## 🛠️ Dotfiles

* tmux
* WezTerm
* Neovim
* LSD

---

## 💻 Clone on a new machine

### 1. Clone the repo

```bash
git clone --bare git@github.com:areberoto/dotfiles.git
```
### 2. Add path to ~/.config

```bash
cd dotfiles/
stow . --adopt
```

