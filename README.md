# My Dotfiles

This repo contains my personal **dotfiles + setup script** to bootstrap a new MacBook dev environment in minutes.

It includes my terminal, Git, VSCode, and essential tools.

---

## What gets installed

- **Core tools:** Homebrew, Git, GitHub CLI, Node.js (with NVM), Python, Yarn, pnpm
- **Apps:** iTerm2, VSCode, Bitwarden, Google Chrome, Docker, Rectangle, Slack, Discord
- **Fonts:** JetBrains Mono
- **VSCode Extensions:** Prettier, ESLint, GitLens, ErrorLens, Better Comments
- **Configs:**
  - `.zshrc` → terminal aliases, prompt, Node setup
  - `.gitconfig` → Git identity + aliases
  - `vscode/settings.json` → editor settings

---

## Quick Start

### 1. Clone this repo

```bash
git clone https://github.com/manulzvz/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

### 2. Run the setup

```bash
chmod +x setup.sh
./setup.sh
```

### 3. Restart terminal

After restart, you’ll have all tools, apps, and configs ready to go.

---

### Customization

Update git/.gitconfig with your name & email:

```bash
[user]
  name = Your Name
  email = you@example.com
```

Adjust **zsh/.zshrc** with any extra aliases or default Node version.

Replace **vscode/settings.json** with your own if needed.
