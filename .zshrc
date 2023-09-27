autoload -U colors && colors
source ~/.oh-my-zsh/instant-zsh.zsh
instant-zsh-pre "%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ ) %{$fg[cyan]%}%c%{$reset_color%  "
# instant-zsh-pre "%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%(5~|%-1~/.../%3~|%4~) %{$reset_color%}%% "
# instant-zsh-pre "%B%39F${${(V)${(%):-%~}//\%/%%}//\//%b%31F/%B%39F}%b%f"$'\n'"%76F❯%f "
# zmodload zsh/zprof
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
  autojump
  zsh-syntax-highlighting
  zsh-autocomplete
  zsh-autosuggestions
  fzf
  thefuck
  web-search
	sudo
	)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
alias zshconfig="nvim ~/.zshrc"

alias ls="exa --icons"
alias ll="ls -l"

alias c='xclip'
alias clip='wl-copy -n'
alias v='xclip -o'
alias cdn='cd ./*(/om[1])'
alias docker-clean='~/scripts/docker-clean.sh'
alias tomatoshell='~/scripts/tomatoshell.sh'
alias today='date +"📅 %A %d %B %Y - %Hh%M"'
alias neorg='cd ~/notes/ ; nvim -c "Neorg workspace notes"'
alias copydir='pwd | wl-copy -n'

cf () {
  local fname
  fname=$(fd . -Ht d | fzf) || return
  cd "$fname"
}

nf () {
  local fname
  fname=$(fd . -Ht f | fzf) || return
  cd "$fname:h"
  nvim "$fname:t"
}

zf () {
  local fname
  fname=$(fd -e pdf . | fzf) || return
  zathura "$fname" --fork
}

mvdl () {
  mv ~/Downloads/*(om[1,${1-1}]) . #`${1-1}` will use $1 is defined else 1
}

ipv4 () {
  local ip
  ip=$(ip -4 addr show wlp0s20f3 | grep -oP "(?<=inet\s)\d+(\.\d+){3}" | tr -d "\n")
  printf "$ip" | wl-copy
  printf "\033[1;34m$ip\033[0m has been copied in the clipboard!\n"
}

export MANPAGER='nvim +Man\!'
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
--pointer= --prompt=' ' "


# sourcing
# source ~/repos/zsh-autocomplete/zsh-autocomplete.plugin.zsh
[[ -s /etc/profile.d/autojump.sh ]] && source /etc/profile.d/autojump.sh
source ~/.oh-my-zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
source ~/.zsh-autopair/autopair.zsh
autopair-init
[ -s "/home/basile/.bun/_bun" ] && source "/home/basile/.bun/_bun"

() {
   local -a prefix=( '\e'{\[,O} )
   local -a up=( ${^prefix}A ) down=( ${^prefix}B )
   local key=
   for key in $up[@]; do
      bindkey "$key" up-line-or-history
   done
   for key in $down[@]; do
      bindkey "$key" down-line-or-history
   done
}

export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/home/basile/.spicetify
export PATH=$PATH:/root/.local/bin
export PATH=$PATH:$HOME/.local/bin

# bun completions

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# zprof

eval $(thefuck --alias --yeah)
