# mason-conform.nvim

Bridge the gap between `mason` and `conform`.

# Install

```lua
require("lazy").setup({
    "williamboman/mason.nvim",
    "stevearc/conform.nvim",
    "zapling/mason-conform.nvim",
})
```

# Setup

It's crucial to setup plugins in the following order:

- `mason.nvim`
- `conform.nvim`
- `mason-conform.nvim`

Otherwise `mason-conform.nvim` will not have enough information about configured formatters and
access the mason registry.

# Configuration

```lua
require("mason-conform").setup()
```

# License

`mason-conform.nvim` is a blatant copy of (mason-nvim-lint)[https://github.com/rshkarin/mason-nvim-lint] 
which in turn takes heavy insperation from (mason-lspconfig.nvim)[https://github.com/williamboman/mason-lspconfig.nvim]
