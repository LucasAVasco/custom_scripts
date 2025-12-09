# Custom scripts

This repository contains custom scripts that I use in my projects and day-to-day tasks.

> [!WARNING]
> This repository has been archived and is no longer updated. I vendorized the scripts in my dotfiles at
> 'https://github.com/LucasAVasco/dotfiles'. You can find the scripts there. The reason for archiving this repository is that some scripts
> depends on my dotfiles. Example: the './scripts/sync_folder/clipboard/lib/clipboard.sh' library uses the `clip-copy` script that is part
> of my dotfiles.

## Installation

It is just a git repository that can be installed with git. Example:

```shell
git clone https://github.com/LucasAVasco/custom_scripts.git ~/.local/custom_scripts
```

> [!WARNING]
> Scripts can have some external dependencies. It is recommended to check the scripts that you are using before execute it.

## Usage

To use a script, just execute it with:

```shell
make -C path/to/this/directory WORKING_DIR=$(pwd) SCRIPTS='path/to/script/relative/to/this/directory' run
```

It is possible to interactively select the script by omitting the `SCRIPTS` argument:

```shell
make -C path/to/this/directory WORKING_DIR=$(pwd) run
```

You can also create an alias to run the Makefile. Example:

```shell
alias custom_script='make -C path/to/this/directory WORKING_DIR=$(pwd)'

custom_script run
```
