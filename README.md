# Brent's extremely well maintained ZSH configuration

I use ZSH as my daily driver for just about all non multimedia tasks.

If you're interested in using some of these settings, I recommend forking my repo and then setting it as upstream so you can fetch any updates that I push. I would also love for people to send me pull requests or tip me off to any features of the shell I might be missing.

I've also a [small collection of guides for using and learning about ZSH](guides/README.md)

## Install Instructions

### (Optional) Fork the repo over to your own account

This will let you backup your configs on github and share them with others

### Clone your repo

I have my install located in the `~/Config/Shells/zsh` folder on mac and on Linux. Unless you're comfortable tracking down non working symlinks or if you're going to be using other tools of mine I recommend that location. It's semantic and accessible.

```bash
mkdir -p ~/Config/Shells && cd ~/Config/Shells

# Clone the repo replace 'PuddletownDesign' with your user name if you forked it
git clone https://github.com/PuddletownDesign/zsh

# go in to the zsh folder
cd zsh

./install.sh
```

And that's it! you should be up and running. If you don't want to run the install.sh, the rest of the guide past this point outlines what the installer does and shows you the commands used, so that you can make your own modifications if you please.

* * *

## All about the installer

The rest of this article covers what the installer does and manually installing if you chose not to use it.

Feel free to run these commands yourself, or just get them all done at once with the installer script. If you forked this repo, and also have stuff in your existing zshrc file you want you keep, you're probably knowledgable to just run these commands yourself and take your time.

### Archive any existing zsh configurations in the home folder

```bash
mv ~/.zshrc ~/.zshrc-old  2> /dev/null
mv ~/.zsh_history ~/.zsh_history-old 2> /dev/null
mv ~/.zshenv ~/.zshenv-old 2> /dev/null
mv ~/.zlogin ~/.zlogin-old 2> /dev/null
mv ~/.zprofile ~/.zprofile-old 2> /dev/null
```

# Sets this repo as the upstream

If you want to pull down any changes from me in the future

```bash
mkdir -p ~/Configs/Shells

git remote add upstream https://github.com/PuddletownDesign/zsh
```

# The installer script will create the following symlinks in your user folder:

# Create a local history file

```bash
touch history.log
```

# Link each of the configuration files to the home directory

```bash
ln -s $PWD/zshrc.zsh ~/.zshrc 2> /dev/null
ln -s $PWD/history.log ~/.zsh_history 2> /dev/null
ln -s $PWD/zshenv.zsh ~/.zshenv 2> /dev/null
ln -s $PWD/zlogin.zsh ~/.zlogin 2> /dev/null
ln -s $PWD/zprofile.zsh ~/.zprofile 2> /dev/null
```

##### Sets this repository as an upstream remote

`git remote add upstream https://github.com/PuddletownDesign/ZSH`

If you want to fetch changes or updates that I make you can run the updater.

##### Install Oh-my-zsh

```bash
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
```

## Oh my zsh

Inside the `oh-my-zsh` folder, you will find `plugins` & `themes`

I've registered all of my aliases in their own plugins. These are set in the `zshrc` file in the plugins string.

To activate the plugins and themes and for best practice, the `custom` folder in oh my zsh is symlinked to the `oh-my-zsh` folder. This way everything is in one place. to activate it run the following command.

```bash
rm ~/.oh-my-zsh/custom

ln -s oh-my-zsh ~/.oh-my-zsh/custom
```

these commands would have been executed by the installer if you chose to run it.

### oh my zsh plugins

-   `puddletown-zsh`
-   `puddletown-common`
-   `puddletown-docker`
-   `puddletown-docker-compose`
-   `puddletown-docker-machine`
-   `puddletown-frameworks`
-   `puddletown-git`
-   `puddletown-jekyll`
-   `puddletown-linters`
-   `puddletown-mac`
-   `puddletown-network`
-   `puddletown-php`
-   `puddletown-postgres`
-   `puddletown-screen`
-   `puddletown-update`
-   `puddletown-vagrant`
-   `puddletown-brew`

Just remove the corresponding string in the `zshrc.sh` file for any you don't need.

### oh my zsh themes

I've included my custom theme `puddletown.zsh-theme`. This will be set by default in the `zshrc.sh` file. There's a lot of [great themes availble](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes)

## That's enough for now

You've got it installed and should be up and running. Happy zshing :)
