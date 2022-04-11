# PROMPT
autoload -U colors && colors
PS1="%{$fg[blue]%}%~ %{$fg[magenta]%}   %{$fg[white]%}"
RPS1="%* %{$fg[green]%} " 

# SOURCES
source ~/.config/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
autoload -U compinit
compinit

# MISC
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.zsh_hist
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
export PATH="${PATH}:${HOME}/.local/bin/"
colorscript -r

# BINDKEYS
bindkey '^[[H' beginning-of-line
bindkey '^[[4~' end-of-line
bindkey '^[[P' delete-char

# ALIASES
alias dir='ls -a --color=auto'
alias del='sudo rm -rf'
alias localsource='cd ~/.local/src'
alias makestallsck='rm -rf config.h && sudo make install'
alias xbpi='sudo xbps-install -S'
alias xbpl='xbps-query -s'
alias xbpss='xbps-query -Rs'
alias xbpr='sudo xbps-remove -R'
alias xbpu='sudo xbps-install -Syu'
alias zshrc='cd && nvim .zshrc'
alias ytmp3='yt-dlp --extract-audio --audio-quality 0 --audio-format mp3'
