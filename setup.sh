#!/bin/bash
set -e

echo "🚀 Starting dev setup..."

# --- Install Homebrew ---
if ! command -v brew &> /dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

eval "$(/opt/homebrew/bin/brew shellenv)"

# --- Update & upgrade ---
brew update && brew upgrade

# --- Core CLI tools ---
brew install git gh node nvm python@3.12 wget

# --- Apps you use ---
brew install --cask \
  iterm2 \
  visual-studio-code \
  bitwarden \
  google-chrome \
  docker \
  rectangle \
  slack \
  discord

# --- Fonts ---
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono

# --- Node global tools ---
npm install -g yarn pnpm eslint prettier

# --- Symlinks for your configs ---
ln -sf $(pwd)/git/.gitconfig ~/.gitconfig
ln -sf $(pwd)/zsh/.zshrc ~/.zshrc
mkdir -p ~/Library/Application\ Support/Code/User
ln -sf $(pwd)/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json

# --- VSCode Extensions ---
code --install-extension GitHub.copilot
code --install-extension shd101.vscode-markdown-preview-enhanced
code --install-extension eamodio.gitlens
code --install-extension usernamehw.errorlens
code --install-extension aaron-bond.better-comments

echo "✅ Dev setup complete! Restart your terminal."
