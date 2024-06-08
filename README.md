# Custom scripts

This repository contains custom scripts that I use in my projects and day-to-day tasks.


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
````
