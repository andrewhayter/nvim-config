# My LazyVim Config

Production-ready Neovim setup for full-stack web development

## 🚀 Stack Support

- **Frontend**: TypeScript, React, Next.js, Tailwind CSS
- **Backend**: Python, Go, Rust
- **Tooling**: ESLint, Prettier, LSP servers

## ✨ Features

- 🎨 **Nightfox** colorscheme with lualine integration
- ⚡ **Lightning fast** startup (~50ms with lazy loading)
- 🔍 **Fuzzy finding** with Telescope (horizontal layout)
- 🌈 **Rainbow delimiters** for better code visibility
- 🎨 **Tailwind intellisense** with inline color previews
- 🦀 **Rust Analyzer**
- 📦 **Auto-formatting** on save (Prettier, ESLint, Ruff, etc.)
- 🔧 **LSP** for all languages with autocomplete via blink.cmp
- 🏷️ **Auto-closing tags** for HTML/JSX
- 📝 **Package.json helper** showing inline version info
- 🌐 **Emmet** for HTML/CSS abbreviations

## 📦 Installation

### Prerequisites (macOS)

```
# Install Neovim 0.10+
brew install neovim ripgrep fd

# Install a Nerd Font for icons
brew install --cask font-jetbrains-mono-nerd-font

# Optional: Install pngpaste for image support
brew install pngpaste
```

### Setup

```
# Backup existing config
mv ~/.config/nvim ~/.config/nvim.backup

# Clone this config
git clone <your-repo-url> ~/.config/nvim

# Start Neovim (plugins auto-install)
nvim
```

On first launch, plugins will auto-install. Wait for completion (shows progress at bottom), then restart Neovim.

## ⌨️ Key Customizations

### Custom Keybindings

| Key           | Action                    |
| ------------- | ------------------------- |
| `<Tab>`       | Next buffer               |
| `<Shift-Tab>` | Previous buffer           |
| `<leader>fp`  | Find plugin files         |
| `<leader>?`   | Show buffer-local keymaps |

### Default LazyVim Keybindings

| Key               | Action                                  |
| ----------------- | --------------------------------------- |
| `Space` (wait 1s) | Show all available commands (which-key) |
| `Space` `Space`   | Find files (Telescope)                  |
| `Space` `/`       | Grep search in project                  |
| `Space` `e`       | Toggle file explorer                    |
| `Space` `,`       | Switch between open buffers             |
| `Space` `f` `r`   | Recent files                            |
| `gd`              | Go to definition                        |
| `gr`              | Go to references                        |
| `K`               | Show documentation                      |
| `Space` `c` `a`   | Code actions (quick fixes)              |
| `Space` `c` `r`   | Rename symbol                           |
| `Ctrl-o`          | Jump back (navigation history)          |
| `Ctrl-i`          | Jump forward (navigation history)       |
| `Ctrl-h/j/k/l`    | Navigate between splits                 |
| `Space` `u` `C`   | Change colorscheme                      |

See [LazyVim keymaps](https://lazyvim.github.io/keymaps) for complete default bindings.

## 🔧 Customization

All custom configs are in `lua/plugins/custom.lua`.

### File Structure

```
~/.config/nvim/
├── lua/
│   ├── config/
│   │   ├── autocmds.lua   # Auto commands
│   │   ├── keymaps.lua    # Custom keybindings
│   │   ├── lazy.lua       # Lazy.nvim setup
│   │   └── options.lua    # Vim options
│   └── plugins/
│       └── custom.lua     # All plugin configurations
├── init.lua               # Entry point
├── lazy-lock.json         # Plugin version lock (DO COMMIT!)
└── lazyvim.json           # LazyVim configuration
```

## 🛠️ Installed Tools (via Mason)

- **Formatters**: stylua, prettier, rustywind, shfmt
- **Linters**: eslint_d, shellcheck, ruff
- **Language Servers**: Various (auto-installed via language extras)

## 🆙 Updates

```
# Update plugins
:Lazy sync

# Update Mason tools
:Mason

# Commit updated versions
git add lazy-lock.json
git commit -m "chore: update plugin versions"
```

## 🐛 Troubleshooting

### Check Health

```
:checkhealth
```

### Restore Plugin Versions

```
:Lazy restore
```

### Common Issues

**Plugins not loading?**

- Run `:Lazy sync` to reinstall
- Check `:Lazy` for any errors

**LSP not working?**

- Run `:LspInfo` to see active servers
- Install missing servers via `:Mason`

**Slow startup?**

- Run `:Lazy profile` to see what's slow
- Check startup time: `nvim --startuptime startup.log`

## 🌐 Language Support

### TypeScript/JavaScript/React

- vtsls (modern TypeScript language server)
- ESLint for linting
- Prettier for formatting
- Auto-imports and organize imports
- JSX/TSX syntax highlighting

### Tailwind CSS

- Class autocomplete with color previews
- Class sorting with rustywind
- Hover to see CSS preview

### Rust

- rust-analyzer with clippy
- Full Cargo integration
- Proc macro support
- TOML support for Cargo.toml

### Python

- Pyright language server
- Ruff for linting and formatting
- Virtual environment support

### Go

- gopls language server
- Auto-formatting with goimports

## 📚 Resources

- [LazyVim Documentation](https://lazyvim.github.io)
- [LazyVim Keymaps](https://lazyvim.github.io/keymaps)
- [Nightfox Theme](https://github.com/EdenEast/nightfox.nvim)
- [Lazy.nvim](https://github.com/folke/lazy.nvim)
