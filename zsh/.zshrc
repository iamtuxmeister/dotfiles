# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
alias clear='clear -x'

#alias cls='clear -x && neofetch --block_range 0 15 --ascii_colors 4 5 --colors 4 7 5 4 5 7'
alias cls='clear -x && neofetch --block_range 0 15 --colors 4 7 5 4 5 7'
# Path to your oh-my-zsh installation.
#export ZSH="/home/kyles/.oh-my-zsh"
export ZSH="$HOME/.oh-my-zsh"

#source /etc/profile.d/vte-2.91.sh
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="eighties"

plugins=(git)

source $ZSH/oh-my-zsh.sh

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(dircolors)"
alias ls='ls --color'
alias vi='nvim'

alias 5m="termdown -f ~/Sources/introduction-to-computers/fonts/doh 5m -a"
alias 3m="termdown -f ~/Sources/introduction-to-computers/fonts/doh 3m -a"
alias 2m="termdown -f ~/Sources/introduction-to-computers/fonts/doh 2m -a"

alias repl='rlwrap sbcl'
alias swank="ros run --eval '(ql:quickload :swank)'  --eval '(swank:create-server :dont-close t)'"

PATH=~/bin:$PATH
PATH=/opt/swift/usr/bin:$PATH
#PATH=~/.local/lib/graalvm/bin:$PATH
PATH=~/.local/bin:$PATH
PATH=~/.cargo/bin:$PATH
PATH=~/.roswell/bin:$PATH
PATH=~/.local/share/pnpm:$PATH
PATH=/usr/local/go/bin:$PATH
PATH=~/go/bin:$PATH

#JAVA_HOME=~/.local/lib/graalvm
JAVA_HOME=/usr/android-studio/jbr
clear

# pnpm
export PNPM_HOME="/home/ks/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Turso
export PATH="/home/ks/.turso:$PATH"

# opam configuration
[[ ! -r /home/ks/.opam/opam-init/init.zsh ]] || source /home/ks/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
