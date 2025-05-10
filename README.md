# 💻 My Dotfiles

This repo tracks my personal configuration files (dotfiles) using a **bare Git repository** method. It keeps `$HOME` clean and avoids symlinks or nested folders.

---

## 🛠️ Dotfiles

* tmux

---

## 🚀 Initial Setup (First Time)

### 1. Initialize the bare Git repository

```bash
git init --bare $HOME/.dotfiles
```

### 2. Define an alias to interact with

```bash
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

You can add the alias to your `.bashrc` or `.zshrc` depending on shell:

```bash
echo "alias dotfiles='/usr/bin/git --git-dir=\$HOME/.dotfiles/ --work-tree=\$HOME'" >> ~/.bashrc
# or ~/.zshrc depending on your shell
```

### 3. Ignore the actual repo folder

```bash
echo ".dotfiles" >> ~/.gitignore
```

### 4. Configure git to hide untracked files

```bash
dotfiles config --local status.showUntrackedFiles no
```

### 5. Start tracking your dotfiles

```bash
dotfiles add .tmux.conf .zshrc .config/nvim .config/lsd
dotfiles commit -m "Initial commit of dotfiles"
dotfiles remote add origin git@github.com:areberoto/dotfiles.git
dotfiles push -u origin master
```

---

## 💻 Clone on a new machine

### 1. Clone the bare repo

```bash
git clone --bare git@github.com:areberoto/dotfiles.git $HOME/.dotfiles
```
### 2. Recreate the alias

```bash
echo "alias dotfiles='/usr/bin/git --git-dir=\$HOME/.dotfiles/ --work-tree=\$HOME'" >> ~/.bashrc
# or ~/.zshrc depending on your shell
```

### 3. Checkout your dotfiles into $HOME

```bash
dotfiles checkout
```

### 4. Hide untracked files from git status

```bash
dotfiles config --local status.showUntrackedFiles no
```
