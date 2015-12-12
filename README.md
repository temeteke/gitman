# gitman

gitman is a tool to get git repository and execute some command.
When you update repository, registered command is executed.

## Usage

	gitman add <repository> <command>
	gitman update
	gitman remove <repository> <command>

## Example

Install dotfiles for vim on github

	gitman add https://github.com/temeteke/vim.git make install

Update

	gitman update

Uninstall

	gitman remove https://github.com/temeteke/vim.git make uninstall
