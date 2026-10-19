# Neovim Configuration

A minimal, personalized Neovim IDE built around native functionality, lightweight plugins, and a clean terminal-based interface.

Designed for **Neovim 0.12.4** on **NixOS + Hyprland + Kitty**, with a focus on Python, Lua, TypeScript, JavaScript, Go, and Nix development.

## Features

- **Minimal interface:** Molokai colorscheme with a transparent background and compositor blur.
- **Animated cursor:** Smooth cursor movement powered by `smear-cursor.nvim`.
- **Native package management:** Uses Neovim's built-in `vim.pack` instead of Lazy or Packer.
- **Syntax highlighting:** Tree-sitter with language-specific parsers.
- **LSP:** Native Neovim LSP with diagnostics, navigation, renaming, and code actions.
- **Autocompletion:** Blink.cmp with minimal completion menus and documentation previews.
- **File explorer:** Nvim-tree positioned on the right, with file and folder icons.
- **Fuzzy finding:** Snacks Picker for files, buffers, commands, and project-wide text search.
- **Statusline:** Lualine with Git branch, file information, diagnostics, and cursor position.
- **Formatting:** Conform.nvim with language-specific formatters.
- **Git integration:** Gitsigns for Git change indicators and hunk operations.
- **Editing utilities:** Mini.pairs and Mini.surround.
- **Custom keybindings:** Simple, predictable keyboard shortcuts.

## Requirements

- Neovim 0.12.4+
- Git
- A terminal with true-color support
- Nerd Font (for file icons)
- Ripgrep (for project-wide search)
- Tree-sitter CLI 0.26.1+
- C compiler (GCC)
- curl and tar
- Language servers and formatters

Transparency and blur are provided by Kitty and Hyprland, not Neovim itself.

## Plugins

| Plugin | Purpose |
|---|---|
| `tomasr/molokai` | Colorscheme |
| `sphamba/smear-cursor.nvim` | Animated cursor |
| `nvim-treesitter/nvim-treesitter` | Syntax parsing and highlighting |
| `nvim-tree/nvim-tree.lua` | File explorer |
| `nvim-tree/nvim-web-devicons` | File and folder icons |
| `neovim/nvim-lspconfig` | Language server configurations |
| `saghen/blink.cmp` | Autocompletion |
| `folke/snacks.nvim` | Command palette and fuzzy search |
| `nvim-lualine/lualine.nvim` | Statusline |
| `stevearc/conform.nvim` | Code formatting |
| `lewis6991/gitsigns.nvim` | Git integration |
| `nvim-mini/mini.pairs` | Automatic bracket and quote pairing |
| `nvim-mini/mini.surround` | Surround editing |

All plugins are installed using Neovim's native `vim.pack` package manager.

## Project Structure

```text
~/.config/nvim/
├── init.lua

