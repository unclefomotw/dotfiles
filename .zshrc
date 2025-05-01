[[ -f /etc/zshrc ]] && source /etc/zshrc

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_TIME=en_US.UTF-8

export CLICOLOR='true'
export LSCOLORS="gxfxcxdxcxegedabagacad"

#alias mouse_read='defaults read .GlobalPreferences com.apple.mouse.scaling'
#alias mouse_write='defaults write .GlobalPreferences com.apple.mouse.scaling -1'

# Skip the rest for non-interactive shells
[[ -o interactive ]] || return


## History tuning
HISTSIZE=10000
SAVEHIST=10000


parse_git_branch() {
  git branch --show-current 2>/dev/null | sed 's/.*/(&)/'
}

autoload -Uz colors && colors
setopt prompt_subst
PROMPT='${debian_chroot:+($debian_chroot)}%{$fg[green]%}%n%{$reset_color%}@%m:%{$fg[yellow]%}%~%{$fg[red]%} $(parse_git_branch)%{$reset_color%} [%D{%F %T}]
$ '


if [[ -x /usr/bin/dircolors ]]; then
  eval "$(dircolors -b ~/.dircolors 2>/dev/null || dircolors -b)"
  alias ls='ls --color=auto'
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

export EDITOR=vim
export VISUAL=vim

export HOMEBREW_PREFIX="/opt/homebrew"
export HOMEBREW_CELLAR="/opt/homebrew/Cellar"
export HOMEBREW_REPOSITORY="/opt/homebrew"
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}"

export LDFLAGS="-L/opt/homebrew/opt/xz/lib $LDFLAGS"
export CPPFLAGS="-I/opt/homebrew/opt/xz/include $CPPFLAGS"
export PKG_CONFIG_PATH="/opt/homebrew/opt/xz/lib/pkgconfig:$PKG_CONFIG_PATH"

export PATH="/Users/uu/.local/bin:$PATH"

export PYTHON_CONFIGURE_OPTS="--enable-shared"

alias poactivate='eval $(poetry env activate)'

