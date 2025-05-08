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
