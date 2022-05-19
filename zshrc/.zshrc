#--------------------------------
# Enable colors and change prompt:
#--------------------------------
autoload -U colors && colors	# Load colors

#--------------------------------
# PROMPT with git info
#--------------------------------
#src: https://salferrarello.com/zsh-git-status-prompt/
# Autoload zsh add-zsh-hook and vcs_info functions (-U autoload w/o substition, -z use zsh style)
autoload -Uz add-zsh-hook vcs_info
# Enable substitution in the prompt.
setopt prompt_subst
# Run vcs_info just before a prompt is displayed (precmd)
add-zsh-hook precmd vcs_info
# add ${vcs_info_msg_0} to the prompt
# e.g. here we add the Git information in red  
PROMPT='%B%F{green}➜%f  %F{cyan}%1~%f ${vcs_info_msg_0_}%b '

# Enable checking for (un)staged changes, enabling use of %u and %c
zstyle ':vcs_info:*' check-for-changes true
# Set custom strings for an unstaged vcs repo changes (*) and staged changes (+)
zstyle ':vcs_info:*' unstagedstr ' ✗'
zstyle ':vcs_info:*' stagedstr ' +'
# Set the format of the Git information for vcs_info
zstyle ':vcs_info:git:*' formats       '%F{blue}git:(%f%F{red}%b%f%F{blue})%f%F{yellow}%u%c%f'
zstyle ':vcs_info:git:*' actionformats '%F{blue}git:(%f%F{red}%b|%a%f%F{blue})%f%%F{yellow}%u%c%f'



#--------------------------------
setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.
setopt interactive_comments

#--------------------------------
# History in cache directory:
#--------------------------------
setopt APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_NO_STORE
setopt HIST_REDUCE_BLANKS
setopt HIST_SAVE_NO_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS
setopt HIST_VERIFY
setopt SHARE_HISTORY
setopt INTERACTIVE_COMMENTS        # pound sign in interactive prompt
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.zsh_history            # where to save zsh history

#--------------------------------
# load alias/functions that works with both zsh/bash
#--------------------------------
if [[ -f ~/.aliasrc ]]; then
    source ~/.aliasrc
fi

#--------------------------------
# Basic auto/tab complete:
#--------------------------------
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

#--------------------------------
# vi mode
#--------------------------------
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.


#--------------------------------
# Edit line in vim with ctrl-e:
#--------------------------------
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line
bindkey -M vicmd '^[[P' vi-delete-char
bindkey -M vicmd '^e' edit-command-line
bindkey -M visual '^[[P' vi-delete


#---------------------------
#  WP CLI
#---------------------------
autoload bashcompinit
bashcompinit
#source ~/dotfiles/wp-completion.bash

#---------------------------
#  FASD
#---------------------------
eval "$(fasd --init auto)"

#---------------------------
#  FZF
#---------------------------
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPS="--extended"
export FZF_DEFAULT_COMMAND="fd --type f"
# export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

#---------------------------
#  Node Version Manager
#---------------------------
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

#----------------------------------
# Added to $PATH
#----------------------------------
export PATH="${PATH}:${HOME}/.local/bin/statusbar/"  #scripts for statusbar
export PATH="${PATH}:${HOME}/torrentflix/bin/"       #torrentflix

#---------------------------
#  pywal
#---------------------------
export PATH="${PATH}:${HOME}/.local/bin/"

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
#(cat ~/.cache/wal/sequences &)

#source ~/.cache/wal/colors-tty.sh

#---------------------------
# for xserver and pulseaudio server
#---------------------------
#export HOST_IP="$(ip route |awk '/^default/{print $3}')"
#export DISPLAY="$HOST_IP:0.0"
#export LIBGL_ALWAYS_INDIRECT=1
#export PULSE_SERVER="tcp:$HOST_IP"

#---------------------------
# for flatpak packages
#---------------------------
export $(dbus-launch)

#---------------------------
# set keyboard layout
#---------------------------
setxkbmap us
xmodmap ~/.Xmodmap

#---------------------------
# Fortune
#---------------------------
fortune ~/.config/fortune/bible-verse | cowsay -f tux

#---------------------------
# zsh plugins
# Load syntax highlighting; should be last.
#---------------------------
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 2>/dev/null
