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
