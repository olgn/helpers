# Squirt (Open CS Code)
## Git Bash
### .bash_profile
* Move `/squirt/squirt-git-bash.sh` to `~/Code/bash/squirt.sh`
* Ensure you have execution privileges
* add the following code to `~/.bash_profile`:
```
alias csc='cd /c/Users/User/Documents/Coordinate\ Solutions/Code'
alias csd='cd /d/cs/'
alias squirt='eval $(~/Code/bash/squirt.sh)'
```
## Bash
### .bashrc
* Move `./squirt/squirt-bash.sh` to `~/.local/bin/squirt.sh`
* Ensure you have execution privileges (`chmod 777 ~/.local/bin/squirt.sh`)
* add the following code to your `~/.bashrc` file:
```
alias csc='cd /mnt/c/Users/User/Documents/Coordinate\ Solutions/Code'
alias csd='cd /mnt/d/cs'
alias squirt='eval $(~/.local/bin/squirt.sh)'
alias squirtui='eval $(~/.local/bin/squirt.sh ui)'
```