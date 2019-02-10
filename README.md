# customTerminalInstaller

This repo is my own version of Hashrocket's Dotmatrix repo.  This allows one to install a custom terminal environment with Powerline for Vim, Tmux,oh-my-zsh with the Agnosterzak theme, iftop, htop, glances, mtr and much more.  So far only the Mac and Raspberry Pi are supported.

# Installation Instructions

```sh
git clone https://github.com/MenkeTechnologies/customTerminalInstaller.git && cd customTerminalInstaller && ./install.sh
```

Some interactivity is required near end of installer for postfix, wireshark and snort installs.

Once you reach the oh-my-zsh prompt, type ```logout```, ```exit``` or type Control-D to return to installer script.

```export GITHUB_ACCOUNT='MenkeTechnologies'```
Change line 18 in ~/.shell_aliases_functions.sh to match your GitHub account name to enable various functionality with your account like openMyGitHub, hd and hc shell functions for opening your GitHub home page, creating and deleting GitHub repos from the command line.


# Running on a MacbookPro
![Alt text](/tmuxfinal1.png?raw=true)
![Alt text](/tmuxfinal22.png?raw=true)
![Alt text](/tmuxfinal5.png?raw=true)
# Running on the Raspberry Pi 3
![Alt text](/tmuxfinal3.png?raw=true)
![Alt text](/tmuxfinal4.png?raw=true)

Includes my iTerm colors profile and the background image.



