# Use NVIM as default text editor
export EDITOR=/usr/bin/nvim


# Prompt Style
PROMPT="%B%F{220}[%f%b%B%F{49}@%f%b%F{158}%m%f %F{80}%t%f%B%F{220}]%f%b%B%F{214}%\>>%f%b "
# Alias vi to nvim
alias vi=nvim

# Alias to turn screens off
alias screenoff='xset dpms force suspend'

# Shortcut for config files
alias dnvim='nvim ~/.config/nvim/init.vim'
alias dzsh='nvim ~/.zshrc'

# VIM Keybindings
bindkey -v

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the cha                                                                                                                                                                             racter to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za                                                                                                                                                                             -z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selecti                                                                                                                                                                             on at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=                                                                                                                                                                             0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputi                                                                                                                                                                             me,cmd'

