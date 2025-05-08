# Optimal Git configuration: secrets from Git core developers

This repository presents an optimal Git configuration directly inspired by the practices of developers who maintain Git itself. These settings will allow you to:

- Save time in your daily operations
- Reduce the risk of errors
- Improve your workflow
- Work more confidently

> **👉 A ready-to-use `.gitconfig` file is available in this repository!** You can simply copy it to your home directory to immediately apply all these configurations.

## 📑 Table of contents

- [Benefits by Category](#-benefits-by-category)
- [Why Use This Configuration?](#-why-use-this-configuration)
- [Repository Organization](#️-repository-organization)
- [Basic Configuration](#️-basic-configuration)
- [Recommended Advanced Configurations](#-recommended-advanced-configurations)
  - [Security and Error Prevention](#security-and-error-prevention)
  - [Workflow Improvement](#workflow-improvement)
  - [Performance Enhancements](#performance-enhancements)
- [Useful Aliases](#-useful-aliases)
- [Enhanced Visualization](#-enhanced-visualization)
- [Quick Installation](#-quick-installation)
  - [Option 1: Use the Provided `.gitconfig` File](#option-1-use-the-provided-gitconfig-file)
  - [Option 2: Installation Script](#option-2-installation-script)
- [Multi-device Synchronization](#-multi-device-synchronization)
- [FAQ and Common Issues](#-faq-and-common-issues)
- [Sources and References](#-sources-and-references)
- [Important Note](#️-important-note)

## 📊 Benefits by category

| Category | Benefits |
|-----------|-----------|
| 🔒 **Security** | Error prevention, branch protection, signature verification |
| ⚡ **Performance** | Faster Git operations, optimization for large repositories |
| 🔄 **Workflow** | Automatic rebasing, improved conflict resolution, commit management |
| 🖥️ **Interface** | Custom aliases, enhanced visualization, syntax highlighting |
| 🔧 **Maintenance** | Credential storage, auto-correction of commands |

## 💡 Why use this configuration?

Git core developers have years of experience with the tool they created. Their personal configurations reflect the best practices acquired over time. By adopting these settings, you directly benefit from their expertise.

## 🗂️ Repository organization

This repository is organized as follows:

- `README.md`: This document you are currently reading
- `.gitconfig`: The ready-to-use Git configuration file
- `setup-git-config.sh`: Installation script for Linux/Mac
- `setup-git-config.bat`: Installation script for Windows

## 🛠️ Basic configuration

```bash
# Identity
git config --global user.name "Your Name"
git config --global user.email "your@email.com"

# Preferred text editor for commit messages
git config --global core.editor "nano" # or vim, emacs, code, etc.

# Colors in Git output
git config --global color.ui auto
```

## 🚀 Recommended advanced configurations

### Security and error prevention

```bash
# IMPORTANT: Safe directory - avoids ownership problems in repositories
git config --global safe.directory *

# Avoids line ending problems between Windows/Linux/Mac
git config --global core.autocrlf input

# Protects against accidental pushes to the wrong branch
git config --global push.default current

# Verifies that commits are signed
git config --global merge.verifySignatures true

# Protects against accidental merges/resets
git config --global pull.ff only
git config --global rebase.missingCommitsCheck warn
```

### Workflow improvement

```bash
# Automatic rebasing during pulls
git config --global pull.rebase true

# Improves conflict readability
git config --global merge.conflictstyle zdiff3

# Auto-correction of commands
git config --global help.autocorrect 10

# Credential storage to avoid constant entry
git config --global credential.helper store
```

### Performance enhancements

```bash
# Accelerates file enumeration on Windows
git config --global core.fscache true

# More efficient delta compression
git config --global core.preloadindex true

# Improves performance for large repositories
git config --global feature.manyFiles true

# Speeds up status calculations
git config --global feature.parallel true
```

## 🔍 Useful aliases

Git core developers use many aliases to speed up their workflow:

```bash
# Display history in a more readable way
git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"

# Short version of checkout
git config --global alias.co checkout

# Short and concise status
git config --global alias.st "status -sb" 

# Quick commit
git config --global alias.ci commit

# View branches
git config --global alias.br branch

# Add all changes and commit
git config --global alias.ca "commit -a"

# View the latest commits
git config --global alias.last "log -1 HEAD"

# Display uncommitted changes
git config --global alias.df "diff --word-diff"

# Undo the last commit (soft)
git config --global alias.undo "reset HEAD~1 --soft"
```

## 📊 Enhanced visualization

```bash
# Differential coloring by function in diffs
git config --global diff.algorithm histogram

# Clearer presentation of differences
git config --global diff.colorMoved default

# Enhanced console display
git config --global color.status auto
git config --global color.branch auto
```

## 🌟 Quick installation

### Option 1: use the provided `.gitconfig` file

The easiest way is to directly use our optimized `.gitconfig` file:

1. Download the `.gitconfig` file from this repository
2. Place it in your home directory (`~` on Linux/Mac, `C:\Users\YourName` on Windows)
3. Customize user information (name, email) if necessary

### Option 2: installation script

To use the installation script:

1. Create a file named `setup-git-config.sh` (on Linux/Mac) or `setup-git-config.bat` (on Windows)
2. Copy and paste the code below into this file
3. Customize the `YOUR_NAME`, `YOUR_EMAIL`, and `YOUR_EDITOR` values at the beginning of the script
4. Make the script executable (Linux/Mac): `chmod +x setup-git-config.sh`
5. Run the script:
   - On Linux/Mac: `./setup-git-config.sh`
   - On Windows: double-click on `setup-git-config.bat` or run it via PowerShell/CMD

Here's the script code to use:

```bash
#!/bin/bash

# CUSTOMIZE THESE THREE VALUES BEFORE RUNNING THE SCRIPT
YOUR_NAME="YOUR_NAME"
YOUR_EMAIL="YOUR_EMAIL"
YOUR_EDITOR="nano"  # or vim, code, emacs, etc.

# Script to apply optimal Git configuration
echo "Applying optimal Git configuration..."

# Basic configuration
git config --global user.name "$YOUR_NAME"
git config --global user.email "$YOUR_EMAIL"
git config --global core.editor "$YOUR_EDITOR"
git config --global color.ui auto

# Security and prevention
git config --global safe.directory "*"
git config --global core.autocrlf input
git config --global push.default current
git config --global pull.ff only
git config --global rebase.missingCommitsCheck warn

# Improved workflow
git config --global pull.rebase true
git config --global merge.conflictstyle zdiff3
git config --global help.autocorrect 10
git config --global credential.helper store

# Performance
git config --global core.fscache true
git config --global core.preloadindex true
git config --global feature.manyFiles true
git config --global feature.parallel true

# Visualization
git config --global diff.algorithm histogram
git config --global diff.colorMoved default
git config --global color.status auto
git config --global color.branch auto

# Useful aliases
git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
git config --global alias.co checkout
git config --global alias.st "status -sb"
git config --global alias.ci commit
git config --global alias.br branch
git config --global alias.ca "commit -a"
git config --global alias.last "log -1 HEAD"
git config --global alias.df "diff --word-diff"
git config --global alias.undo "reset HEAD~1 --soft"

echo "✅ Optimal Git configuration successfully applied!"
```

### Windows version (setup-git-config.bat)

```batch
@echo off
REM CUSTOMIZE THESE THREE VALUES BEFORE RUNNING THE SCRIPT
set YOUR_NAME=YOUR_NAME
set YOUR_EMAIL=YOUR_EMAIL
set YOUR_EDITOR=notepad   REM or code, notepad++, etc.

echo Applying optimal Git configuration...

REM Basic configuration
git config --global user.name "%YOUR_NAME%"
git config --global user.email "%YOUR_EMAIL%"
git config --global core.editor "%YOUR_EDITOR%"
git config --global color.ui auto

REM Security and prevention
git config --global safe.directory "*"
git config --global core.autocrlf input
git config --global push.default current
git config --global pull.ff only
git config --global rebase.missingCommitsCheck warn

REM Improved workflow
git config --global pull.rebase true
git config --global merge.conflictstyle zdiff3
git config --global help.autocorrect 10
git config --global credential.helper store

REM Performance
git config --global core.fscache true
git config --global core.preloadindex true
git config --global feature.manyFiles true
git config --global feature.parallel true

REM Visualization
git config --global diff.algorithm histogram
git config --global diff.colorMoved default
git config --global color.status auto
git config --global color.branch auto

REM Useful aliases
git config --global alias.lg "log --graph --pretty=format:'%%Cred%%h%%Creset -%%C(yellow)%%d%%Creset %%s %%Cgreen(%%cr) %%C(bold blue)^<%%an^>%%Creset' --abbrev-commit --date=relative"
git config --global alias.co checkout
git config --global alias.st "status -sb"
git config --global alias.ci commit
git config --global alias.br branch
git config --global alias.ca "commit -a"
git config --global alias.last "log -1 HEAD"
git config --global alias.df "diff --word-diff"
git config --global alias.undo "reset HEAD~1 --soft"

echo ✅ Optimal Git configuration successfully applied!
pause
```

## 🔄 Multi-device synchronization

To keep this configuration on all your devices, you can:

1. Directly use the `.gitconfig` file provided in this repository (simply copy it to your home directory)
2. Create an installation script based on this README
3. Use a dotfiles manager
4. Store your `.gitconfig` in a Git repository and clone it on each new machine

> **Important note:** A complete `.gitconfig` file is available in this repository so you can simply copy and paste it into your home directory (`~` or `%USERPROFILE%`).

## ❓ FAQ and common issues

### How can I verify that the configuration has been properly applied?
```bash
git config --list
```
This command will display all your current Git configurations.

### Some commands don't work as expected
Make sure your Git version is up to date. Some configurations may require a recent version of Git.

### I want to revert to my previous configuration
Before installing this configuration, make a backup of your current `.gitconfig` file:
```bash
cp ~/.gitconfig ~/.gitconfig.backup
```
To restore your old configuration:
```bash
cp ~/.gitconfig.backup ~/.gitconfig
```

### Do these configurations work with GitHub/GitLab/Bitbucket?
Yes, these configurations are compatible with all popular Git platforms.

### An alias conflicts with another tool I use
You can modify or remove a specific alias using:
```bash
git config --global --unset alias.aliasname
```

## 📝 Sources and references

This configuration is inspired by the practices of Git core developers, as documented in the article [How Git Core Devs Configure Git](https://blog.gitbutler.com/how-git-core-devs-configure-git/).

---

## ⚠️ Important note

Always adapt these configurations to your specific needs. Some settings may not match your particular workflow or your organization's policies.

Feel free to explore the complete configuration file with `git config --list` to see all your current settings.

---

*Feel free to contribute to this repository by suggesting improvements to this configuration!*
