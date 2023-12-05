# go-task.vim

## Notice

This plugin is not yet complete.  
Breaking changes may be made to the current specifications.

## About

This plugin is an integration of [go-task](https://github.com/go-task/task).

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

## Loadmap

This plugin will implement the following functions.

- [x] View tasks in the buffer.
- [x] Run tasks from the buffer.
- [ ] Go to definition from the buffer.
- [ ] Run last task command.
- [ ] Multi-root workspace support.
- [ ] Initialize a Taskfile in the current workspace.

## License

MIT
