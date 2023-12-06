# go-task.vim

## Notice

This plugin is not yet complete.  
Breaking changes may be made to the current specifications.

## About

This plugin is an integration of [go-task](https://github.com/go-task/task).

## Required

[go-task](https://github.com/go-task/task)

## Installation

Install it with your plugin manager. Below is an example of lazy.nvim.

```lua
require("lazy").setup({
  "shutils/go-task.vim",
})
```

## Usage

### `GoTask`

This command will open a new buffer and display your tasks.  
Place the cursor on the task you want to execute and press the enter key to execute it.
Press the q key closes the buffer.

## Loadmap

This plugin will implement the following functions.

### Core feature

- [x] View tasks in the buffer.
- [x] Run tasks from the buffer.
- [ ] Go to definition from the buffer.
- [ ] Run last task command.
- [ ] Multi-root workspace support.
- [ ] Initialize a Taskfile in the current workspace.

### Other feature

- [ ] Select the direction in which tasks are display feature
  - [x] split top
  - [x] split bottom
  - [x] vsplit left (default)
  - [x] vsplit right
  - [ ] float (neovim only)
- [ ] Select runners to exec tasks feature
  - [x] terminal command (default)
  - [ ] floaterm
  - [ ] toggleterm
- [x] Auto close feature
  - [x] Task selector window
  - [x] Task exec window
- [ ] Custom keymap config
- [ ] Custom task cmd name e.g. `go-task`

## License

MIT
