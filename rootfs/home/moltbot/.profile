# Source .bashrc if it exists (for bash-specific configurations)
[ -f "$HOME/.bashrc" ] && . "$HOME/.bashrc"
[ -f "$HOME/.zshrc" ] && . "$HOME/.zshrc"

# Load Homebrew (only if installed - it's optional in this image)
if [ -x /home/linuxbrew/.linuxbrew/bin/brew ]; then
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

# nvm is loaded via NVM_DIR in service scripts (see /etc/services.d/moltbot/run)

# Setup pnpm PATH
export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

# Add .local/bin to PATH if it exists
if [ -d "$HOME/.local/bin" ]; then
    export PATH="$HOME/.local/bin:$PATH"
fi
