# Neovim Keybindings Reference

## Leader Keys
- **Leader**: `<space>` (spacebar)
- **Local Leader**: `\` (backslash)

## File Navigation & Windows
| Key | Mode | Action |
|-----|------|--------|
| `` ` `` | Normal | Toggle NvimTree file browser |
| `<C-h>` | Normal | Jump to left window (file browser) |
| `<C-l>` | Normal | Jump to right window (text editor) |

## Movement & Navigation
| Key | Mode | Action |
|-----|------|--------|
| `K` | Normal | Jump up 10 rows |
| `J` | Normal | Jump down 10 rows |
| `H` | Normal | Jump to beginning of line |
| `L` | Normal | Jump to end of line |

## Insert Mode & Escaping
| Key | Mode | Action |
|-----|------|--------|
| `<BS>` | Normal | Enter insert mode and backspace |
| `<return>` | Normal | Enter insert mode and new line |
| `jj`, `jk`, `kk`, `kj` | Insert | Exit to normal mode |

## File Operations
| Key | Mode | Action |
|-----|------|--------|
| `WW` | Normal | Save all files |
| `qq` | Normal | Quit current buffer |
| `QQ` | Normal | Save all and quit |
| `<leader>f` | Normal | Run stylua formatter |
| `<leader>p` | Normal | Run prettier formatter |

## Fuzzy Finding & File Search (Telescope)
| Key | Mode | Action |
|-----|------|--------|
| `<leader>ff` | Normal | Find files (enhanced fuzzy finder) |
| `<leader>fg` | Normal | Live grep (search text across project) |
| `<leader>fr` | Normal | Recent files |
| `<leader>fb` | Normal | File browser |

## Buffer Management
| Key | Mode | Action |
|-----|------|--------|
| `<Tab>` | Normal | Next buffer |
| `<S-Tab>` | Normal | Previous buffer |
| `<leader>bd` | Normal | Delete buffer |

## Git Integration (GitSigns)
| Key | Mode | Action |
|-----|------|--------|
| `]c` | Normal | Go to next git hunk |
| `[c` | Normal | Go to previous git hunk |
| `<leader>hs` | Normal | Stage hunk |
| `<leader>hr` | Normal | Reset hunk |
| `<leader>hp` | Normal | Preview hunk changes |
| `<leader>hb` | Normal | Show git blame for line |
| `<leader>hd` | Normal | Show diff for current file |

## Code Commenting
| Key | Mode | Action |
|-----|------|--------|
| `<leader>/` | Normal | Comment/uncomment current line |
| `<leader>/` | Visual | Comment/uncomment selected lines |

## Code Folding
| Key | Mode | Action |
|-----|------|--------|
| `zR` | Normal | Open all folds |
| `zM` | Normal | Close all folds |
| `za` | Normal | Toggle fold at cursor |

## Markdown & Documentation
| Key | Mode | Action |
|-----|------|--------|
| `<leader>mp` | Normal | Toggle markdown preview |

## Search & Highlighting
| Key | Mode | Action |
|-----|------|--------|
| `<space>//` | Normal | Clear search highlight |

## LSP (Language Server Protocol)
| Key | Mode | Action |
|-----|------|--------|
| `gD` | Normal | Go to declaration |
| `gd` | Normal | Go to definition |
| `?` | Normal | Show hover information |
| `gi` | Normal | Go to implementation |
| `<C-k>` | Normal | Show signature help |
| `<space>D` | Normal | Go to type definition |
| `<space>rn` | Normal | Rename symbol |
| `<space>ca` | Normal | Show code actions |
| `gr` | Normal | Find references |
| `<space>f` | Normal | Format code |

## Data Science & Quarto (.qmd files)

### Variable Inspector & Environment
| Key | Mode | Action |
|-----|------|--------|
| `<leader>vi` | Normal | Show variable inspector (Python/R environments) |
| `<leader>vh` | Normal | Search help documentation |
| `<leader>vv` | Normal | Show workspace symbols |
| `<leader>vr` | Normal | Find references |
| `<leader>vd` | Normal | Show diagnostics |

### Help System
| Key | Mode | Action |
|-----|------|--------|
| `<leader>hh` | Normal | Toggle help browser (Telescope) |

### REPL Controls
| Key | Mode | Action |
|-----|------|--------|
| `<leader>rt` | Normal | Toggle REPL window |
| `<leader>rh` | Normal | Hide REPL window |
| `<leader>rs` | Normal | Restart REPL |

### Code Execution (Molten - Jupyter Integration)
| Key | Mode | Action |
|-----|------|--------|
| `<localleader>mi` | Normal | Initialize Molten kernel |
| `<localleader>e` | Normal | Evaluate with operator |
| `<localleader>rl` | Normal | Evaluate current line |
| `<localleader>r` | Visual | Evaluate selected code |
| `<localleader>rr` | Normal | Re-evaluate cell |
| `<localleader>rd` | Normal | Delete Molten cell |
| `<localleader>oh` | Normal | Hide output |
| `<localleader>os` | Normal | Show output |

### Notebook Navigation
| Key | Mode | Action |
|-----|------|--------|
| `]h` | Normal | Move to next cell |
| `[h` | Normal | Move to previous cell |
| `<leader>X` | Normal | Run current cell |
| `<leader>x` | Normal | Run cell and move to next |
| `<leader>h` | Normal | Activate Hydra mode (notebook commands) |

### Iron REPL (Alternative REPL system)
| Key | Mode | Action |
|-----|------|--------|
| `<space>sc` | Normal/Visual | Send code to REPL |
| `<space>sf` | Normal | Send entire file to REPL |
| `<space>sl` | Normal | Send line to REPL |
| `<space>sm` | Normal | Send marked region to REPL |
| `<space>mc` | Normal/Visual | Mark code for sending |
| `<space>md` | Normal | Remove mark |
| `<space>s<cr>` | Normal | Send carriage return to REPL |
| `<space>s<space>` | Normal | Interrupt REPL |
| `<space>sq` | Normal | Exit REPL |
| `<space>cl` | Normal | Clear REPL |
| `<space>rs` | Normal | Start REPL |
| `<space>rr` | Normal | Restart REPL |
| `<space>rf` | Normal | Focus REPL |
| `<space>rh` | Normal | Hide REPL |

### Vim Slime (Code Sending)
| Key | Mode | Action |
|-----|------|--------|
| `<C-c><C-c>` | Normal | Send paragraph |
| `<C-c><C-c>` | Visual | Send selected region |
| `<C-c>v` | Normal | Configure slime target |

## Workflow Tips

### Starting a Quarto Session
1. Open `.qmd` file
2. `<leader>rt` - Open REPL
3. `<localleader>mi` - Initialize Molten kernel
4. `<localleader>r` (visual mode) - Execute code chunks
5. `<leader>vi` - Check variables
6. `<leader>hh` - Search documentation when needed

### RStudio-like Experience
- **Console**: Use `<leader>rt` to toggle REPL window
- **Environment**: Use `<leader>vi` to inspect variables
- **Help**: Use `<leader>hh` to search and browse help
- **Script Execution**: Use `<localleader>r` in visual mode to run code

## Which-Key Helper
| Key | Mode | Action |
|-----|------|--------|
| `<leader>` (pause) | Normal | Show available keybindings menu |

## Quick Reference Commands
- `:QuartoPreview` - Start live preview in browser
- `:MoltenInit python3` or `:MoltenInit ir` - Initialize kernels
- `:Telescope help_tags` - Search all documentation
- `:MarkdownPreviewToggle` - Toggle markdown preview
- `:Lazy` - Plugin manager interface
- `:Mason` - LSP server manager

## New UI Features
- **Statusline**: Shows git branch, LSP status, and active Molten kernels
- **Bufferline**: Tab-like interface for open buffers
- **Dashboard**: Start screen with shortcuts (shown on startup)
- **Indent Guides**: Visual indentation lines in code
- **Git Signs**: Shows added/modified/deleted lines in gutter
- **Better Syntax**: Enhanced highlighting for Python, R, Markdown, etc.

## Productivity Tips
1. **Use Which-Key**: Press `<leader>` and wait to see organized command menu
2. **Quick File Access**: `<leader>ff` for files, `<leader>fr` for recent, `<leader>fg` for text search
3. **Git Workflow**: Use `]c`/`[c` to navigate changes, then `<leader>hp` to preview, `<leader>hs` to stage
4. **Buffer Navigation**: Use `Tab`/`Shift+Tab` instead of complex buffer commands
5. **Smart Commenting**: `<leader>/` works contextually for R, Python, or any language
6. **Code Folding**: Use `za` to toggle folds, `zM`/`zR` to close/open all folds