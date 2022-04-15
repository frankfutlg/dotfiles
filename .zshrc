# PROMPTS
autoload -U colors && colors
PROMPT='%K{#575268}%F{#F5C2E7} %2~%f %k%F{#575268}  %f'
RPROMPT='%F{blue}%*%f'

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

transfer(){ if [ $# -eq 0 ];then echo "No arguments specified.\nUsage:\n transfer <file|directory>\n ... | transfer <file_name>">&2;return 1;fi;if tty -s;then file="$1";file_name=$(basename "$file");if [ ! -e "$file" ];then echo "$file: No such file or directory">&2;return 1;fi;if [ -d "$file" ];then file_name="$file_name.zip" ,;(cd "$file"&&zip -r -q - .)|curl --progress-bar --upload-file "-" "https://transfer.sh/$file_name"|tee /dev/null,;else cat "$file"|curl --progress-bar --upload-file "-" "https://transfer.sh/$file_name"|tee /dev/null;fi;else file_name=$1;curl --progress-bar --upload-file "-" "https://transfer.sh/$file_name"|tee /dev/null;fi;}

neofetch

# BINDKEYS
bindkey '^[[H' beginning-of-line
bindkey '^[[4~' end-of-line
bindkey '^[[P' delete-char

# ALIASES
alias dir='ls -a --color=auto'
alias del='sudo rm -r'
alias img='sxiv *'
alias cc='cp -rf'
alias fetch='neofetch'
alias killp='killall'
alias localsource='cd ~/.local/src'
alias makestallsck='rm -rf config.h && sudo make install'
alias zshrc='cd && nvim .zshrc'
alias ytmp3='yt-dlp --extract-audio --add-metadata --xattrs --embed-thumbnail --audio-quality 0 --audio-format mp3'
alias ytmp4='yt-dlp --merge-output-format mp4 -f "bestvideo+bestaudio[ext=m4a]/best" --embed-thumbnail --add-metadata'
