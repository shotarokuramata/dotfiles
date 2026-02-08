# sheldonが管理するプラグインの読込み
eval "$(sheldon source)"

eval "$(starship init zsh)"

# lsなどの出力への色付け
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# その他の便利なエイリアス
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# HISTORY関連
HISTSIZE=10000
SAVEHIST=10000
# 重複するコマンドを記録しない
setopt hist_ignore_dups
# スペースで始まるコマンドを履歴に記録しない
setopt hist_ignore_space
# 古い重複コマンドを削除
setopt hist_ignore_all_dups

# moonbit
export PATH="$HOME/.moon/bin:$PATH"

export PATH="$HOME/bin:$PATH"

export EDITOR="hx"

# WezTerm OSC 7: カレントディレクトリの通知（split pane時のcwd引き継ぎに必要）
__osc7_cwd() {
  printf "\033]7;file://%s%s\033\\" "$(hostname)" "$PWD"
}
autoload -Uz add-zsh-hook
add-zsh-hook precmd __osc7_cwd
