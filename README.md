# drywaters NVIM Config

## Based Off
[Neovim Kickstarter](https://github.com/nvim-lua/kickstart.nvim)

## Nvim Plugins installed
All Kickstarter plugins enabled except for linter (Need to still config)
1. [Telescope Undo](https://github.com/debugloop/telescope-undo.nvim) Can use github.com/drywaters/telescope-undo.nvim for WSL with Delta
2. [LazyGit](https://github.com/kdheepak/lazygit.nvim)
3. [DAP For JS](https://github.com/mxsdev/nvim-dap-vscode-js)
4. [Neotest](https://github.com/nvim-neotest/neotest)
5. [Neotest-Jest](https://github.com/nvim-neotest/neotest-jest)
6. [Neotest-Go](https://github.com/nvim-neotest/neotest-go)

## Tools that need to be installed to support
Kickerstarter requirements like ripgrep, etc.
1. [NerdFont](https://www.nerdfonts.com/font-downloads)
2. [LazyGit](https://github.com/jesseduffield/lazygit)
3. [VSCode debugger](https://github.com/microsoft/vscode-js-debug)  See instructions in JS DAP repo
4. [Delve](https://github.com/go-delve/delve)  Debugger for Go
5. [Delta](https://github.com/dandavison/delta)  Diff tool. Can be setup to replace Git also.  See installation notes

## Keybindings
1. Additional key bindings for Neotest.  <leader>t + (Letter command).  Ex. [r]un
2. LazyGit.  <leader>lg
