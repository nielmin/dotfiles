# My dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure you have the following installed on your system

### Git

```
// Arch Linux
pacman -S git

// Fedora Linux
dnf install git
```

### Stow

```
// Arch Linux
pacman -S stow

// Fedora Linux
dnf install stow
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
git clone git@github.com:nielmin/dotfiles.git .dotfiles
cd .dotfiles
```

then use GNU stow to create symlinks

```
stow .
```
