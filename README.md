Forked from <https://github.com/mathiasbynens/dotfiles>.

## Installation

### Oh My Zsh

See <https://ohmyz.sh>.

### Using Git and the bootstrap script

Clone the repository. The bootstrapper script will pull in the latest version and copy the files to your home folder.

```bash
cd ~/Projects && git clone https://github.com/sephlietz/dotfiles.git && cd dotfiles && source bootstrap.sh
```

```bash
cd ~/Projects/dotfiles && source bootstrap.sh
```

Alternatively, to update while avoiding the confirmation prompt:

```bash
cd ~/Projects/dotfiles && set -- -f; source bootstrap.sh
```

### Git-free install

To install these dotfiles without Git:

```bash
cd; curl -#L https://github.com/sephlietz/dotfiles/tarball/master | tar -xzv --strip-components 1 --exclude={README.md,bootstrap.sh,LICENSE-MIT.txt}
```

To update later on, just run that command again.

### Sensible OS X defaults

When setting up a new Mac, you may want to set some sensible OS X defaults:

```bash
./.osx
```

### Install Homebrew formulae

When setting up a new Mac, you may want to install some common [Homebrew](http://brew.sh/) formulae (after installing Homebrew, of course):

```bash
./brew.sh
```
