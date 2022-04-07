# Prompt 
autoload -U colors && colors
PS1="%{$fg[white]%}[%{$reset_color%}%{$fg[cyan]%}%n%{$fg[magenta]%}@%{$fg[red]%}%m: %~%{$fg[white]%}]%{$reset_color%}$ > "

# Binds
bindkey "^[[H"	beginning-of-line
bindkey "^[[4~"	end-of-line
bindkey "^[[P"	delete-char

# Auto Comp/Sources
autoload -U compinit
compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
source ~/.config/zsh-autosuggestions/zsh-autosuggestions.zsh

# History
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

# Aliases
alias makestallsck='rm -rf config.h && sudo make install'
alias slkiller='killall slstatus && rm -rf config.h && sudo make install'
