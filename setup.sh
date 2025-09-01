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

# --- Node global tools ---
npm install -g yarn pnpm eslint prettier

# --- Symlinks for your configs ---
ln -sf $(pwd)/git/.gitconfig ~/.gitconfig
ln -sf $(pwd)/zsh/.zshrc ~/.zshrc
mkdir -p ~/Library/Application\ Support/Code/User
ln -sf $(pwd)/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json

echo "✅ Dev setup complete! Restart your terminal."

# ------------------------------
# Maintenance / Update Script
# ------------------------------
update_dev() {
  echo "🔄 Updating Homebrew packages..."
  brew update && brew upgrade && brew cleanup

  echo "🔄 Updating global npm packages..."
  npm update -g

  echo "🔄 Updating VSCode extensions..."
  code --list-extensions | xargs -L 1 echo "Updating:"

  echo "✅ Update complete!"
}

echo "💡 To update your dev environment in the future, run: update_dev"
