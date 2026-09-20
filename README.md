# gitman

gitman is a tool to get git repository and execute some command.
When you update repository, registered command is executed.

## Installation

	make install

This installs:

	~/bin/gitman
	${XDG_DATA_HOME:-~/.local/share}/bash-completion/completions/gitman

If `XDG_DATA_HOME` is not set, the Bash completion is installed under
`~/.local/share/bash-completion/completions/`.

To uninstall:

	make uninstall

## Usage

	gitman add <repository> <command>
	gitman update
	gitman run <repository> <command>
	gitman remove <repository> [<command>]

## Example

Install dotfiles for vim on github

	gitman add https://github.com/temeteke/vim.git make install

Update

	gitman update

Run a command in the cloned repository

	gitman run https://github.com/temeteke/vim.git make uninstall

Uninstall and remove

	gitman remove https://github.com/temeteke/vim.git make uninstall

## Bash completion

Bash completion is installed automatically by `make install`.

It completes gitman subcommands and registered repositories for `run` and `remove`.
