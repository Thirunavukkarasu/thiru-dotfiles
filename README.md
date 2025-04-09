# 🛠️ thiru-dotfiles

My personal configuration files for Zsh and other development tools.

> ⚠️ These are optimized for macOS (Apple Silicon) with Homebrew. Adjust paths accordingly for other setups.

## 📂 Structure

```
dotfiles/
├── zsh/
│   ├── .zshrc             # Main Zsh config
│   ├── .zsh_aliases       # Custom aliases
│   ├── .zsh_exports       # Env vars and PATHs
│   ├── .zsh_plugins       # Plugin list (Oh My Zsh)
├── install.sh             # Bootstrap symlink setup
└── .gitignore             # Excludes secrets, cache, etc.
```

## 🚀 Installation
Clone and run install.sh to symlink configs into your home directory:

```
git clone https://github.com/<your-username>/dotfiles.git ~/dotfiles
cd ~/dotfiles
bash install.sh
```

This will link:

`~/.zshrc` → `dotfiles/zsh/.zshrc`

`~/.zsh_aliases` → `dotfiles/zsh/.zsh_aliases`

and so on…

## 🧩 Plugin Setup

Make sure these tools/plugins are installed:

* Oh My Zsh
* Powerlevel10k
* zsh-autosuggestions
* zsh-syntax-highlighting
* fzf
* zoxide

You can install most of them via Homebrew.

## 🔒 Secrets

For secrets like tokens or credentials, use a .zsh_secrets file (ignored by git):

```
# ~/.zsh_secrets
export GH_TOKEN=...
export AWS_SECRET=...
```

Then in .zshrc:

```
[ -f "$HOME/.zsh_secrets" ] && source "$HOME/.zsh_secrets"
```

### 🧠 Pro Tips

* Reconfigure Powerlevel10k: `p10k configure`
* Update plugins: `omz update`
* Preview all aliases: `alias | less`
* Check load time: `zmodload zsh/zprof && zprof`
