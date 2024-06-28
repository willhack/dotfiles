# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(
  autoupdate              # added
  colored-man-pages 
  encode64
  git
  zsh-autosuggestions     # added
  zsh-syntax-highlighting # added
)

source $ZSH/oh-my-zsh.sh

VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"
alias zz="exec zsh"

alias n="nvim ."
alias nc="nvim ~/.config/nvim/init.lua"
alias zc="nvim ~/.zshrc"
alias wc="nvim ~/.wezterm.lua"
alias dc="nvim ~/repos/qmk_firmware/keyboards/draculad/keymaps/gotham/keymap.c"
alias df="cd ~/repos/qmk_firmware/keyboards/draculad/keymaps/gotham"

alias fk="qmk compile -j 0 && qmk flash" 

alias tt="nvim ~/repos/total-typescript/react-typescript-tutorial/src/04-advanced-props/25-toggle-props.problem.tsx"
alias rh="rustlings hint next"
alias rw="rustlings watch"

alias arm="env /usr/bin/arch -arm64 /bin/zsh --login"
alias intel="env /usr/bin/arch -x86_64 /bin/zsh --login"
# fnm setup
eval "$(fnm env --use-on-cd)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# bun completions
[ -s "/Users/will/.bun/_bun" ] && source "/Users/will/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/will/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
