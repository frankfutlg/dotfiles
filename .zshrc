# PROMPTS
autoload -U colors && colors
PS1=" %{$fg[green]%}  %{$fg[blue]%}%3~  "
RPS1="%{$fg[red]%} "

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
transfer(){ if [ $# -eq 0 ];then echo "No arguments specified.\nUsage:\n transfer <file|directory>\n ... | transfer <file_name>">&2;return 1;fi;if tty -s;then file="$1";file_name=$(basename "$file");if [ ! -e "$file" ];then echo "$file: No such file or directory">&2;return 1;fi;if [ -d "$file" ];then file_name="$file_name.zip" ,;(cd "$file"&&zip -r -q - .)|curl --progress-bar --upload-file "-" "https://transfer.sh/$file_name"|tee /dev/null,;else cat "$file"|curl --progress-bar --upload-file "-" "https://transfer.sh/$file_name"|tee /dev/null;fi;else file_name=$1;curl --progress-bar --upload-file "-" "https://transfer.sh/$file_name"|tee /dev/null;fi;}
ghosts

case ${TERM} in
	st*) precmd () {print -Pn "\e]0;$(pwd | sed 's/\/home\/frankfut/~/')\a"} ;;
esac

# BINDKEYS
bindkey '^[[H' beginning-of-line
bindkey '^[[4~' end-of-line
bindkey '^[[P' delete-char

# ALIASES
alias dir='ls -a --color=auto'
alias del='doas rm -r'
alias img='sxiv *'
alias cc='cp -rf'
alias ls='exa --color=always --group-directories-first'
alias la='exa --color=always -a --group-directories-first'
alias performance='doas cpupower frequency-set -g performance'
alias schedutil='doas cpupower frequency-set -g schedutil'
alias makestallsck='rm -rf config.h && doas make install'
alias cleanlefts='rm -rf *.orig && rm -rf *.rej'
alias zshrc='cd && nvim .zshrc'
alias xbi='doas xbps-install -S'
alias xbr='doas xbps-remove -R'
alias xbu='doas xbps-install -Su'
alias xbls='xbps-query -s'
alias xbs='xbps-query -Rs'
alias ytmp3='yt-dlp --extract-audio -audio-quality 0 --audio-format mp3'
alias ytmp4='yt-dlp -f "bestvideo+bestaudio[ext=m4a]/best"'
