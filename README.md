# dotfiles

[chezmoi](https://chezmoi.io) managed, template-based, multi-machine dotfiles.

## Structure

```
.
├── dot_config/
│   ├── fish/           # fish shell (conf.d/, config, plugins)
│   └── starship.toml   # prompt theme (Tokyo Night)
├── dot_zsh/            # zsh modules (1-9: prompt→env→path→aliases→...)
├── dot_ssh/            # ssh config (Secretive + OrbStack)
├── dot_gitconfig       # git (ssh signing, proxy)
├── dot_gitallowedsigners
└── Brewfile            # brew packages
```

## Quick Start

```bash
# install + apply
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply francismiko

# or manually
brew install chezmoi
chezmoi init git@github.com:francismiko/dotfiles.git --apply
```

## Usage

| cmd | desc |
|-----|------|
| `chezmoi edit <file>` | edit source |
| `chezmoi apply` | apply changes |
| `chezmoi diff` | preview changes |
| `chezmoi update` | pull + apply |
| `chezmoi cd` | cd to source dir |

## Template Variables

```toml
# .chezmoi.toml.tmpl → ~/.config/chezmoi/chezmoi.toml
[data]
is_server = true   # Mac-mini
is_work = false    # work-* hostname
```

## Features

- **Shell**: fish + starship | zsh + p10k
- **Runtime**: ServBay (node/python/go/java/rust/ruby/.net)
- **SSH**: Secretive agent + OrbStack integration
- **Git**: SSH commit signing + proxy config

## Environment

macOS · fish/zsh · Homebrew · ServBay · Secretive · OrbStack
