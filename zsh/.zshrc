# System 
export XDG_CONFIG_HOME="$HOME/.config"
export PATH=$PATH:$HOME/go/bin
export EDITOR="nvim"

# Plugins
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/zsh-completions/zsh-completions.plugin.zsh

# Keybinding
bindkey '^k' history-search-backward
bindkey '^j' history-search-forward

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_find_no_dups

# Aliase
alias leetcode='nvim leetcode.nvim' 

# Prompt
RESET="%f"
BOLD="%B"
GRAY=$'\x1b[38;2;170;170;170m'

PROMPT_TOP="   ${BOLD}${GRAY}%~${RESET}"
PROMPT_BOTTOM=" → "
PROMPT="${PROMPT_TOP}"$'\n'"${PROMPT_BOTTOM}"
