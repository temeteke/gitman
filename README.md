# gitman

gitman is a tool to get git repository and execute some command.
When you update repository, registered command is executed.

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

Source the completion script from your Bash configuration:

	source /path/to/gitman/completion/gitman.bash

This completes gitman subcommands and registered repositories for `run` and `remove`.
