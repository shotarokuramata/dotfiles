# 基本PATH設定
export PATH="$HOME/.local/bin:$PATH"
export EDITOR=vim

# console-ninja
export PATH="$HOME/.console-ninja/.bin:$PATH"

# Browser設定（WSL用）
export BROWSER="$HOME/.script/winpath"

# Cargo (Rust)
if [ -f "$HOME/.cargo/env" ]; then
    . "$HOME/.cargo/env"
fi

# ローカル環境設定
if [ -f "$HOME/.local/bin/env" ]; then
    . "$HOME/.local/bin/env"
fi

# mise (ランタイムマネージャー)
if command -v mise &> /dev/null; then
    eval "$(mise activate zsh)"
fi
