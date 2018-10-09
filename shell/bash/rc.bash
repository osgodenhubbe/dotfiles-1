[ -f ~/.fzf.bash ] && source ~/.fzf.bash
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# Requires the npm-no-sudo script be run first. Assumes default directories.
export NPM_PACKAGES="$HOME/.npm-packages"
export NODE_PATH="$NPM_PACKAGES/lib/node_modules${NODE_PATH:+:$NODE_PATH}"
export PATH="$NPM_PACKAGES/bin:$PATH"
# Unset manpath so we can inherit from /etc/manpath via the `manpath`
# command
unset MANPATH  # delete if you already modified MANPATH elsewhere in your config
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"


export JAVA_HOME=/Library/Java/Home
export PATH=$PATH:$JAVA_HOME

eval $(thefuck --alias)

export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"

source $HOME/.config/keychain/keychain.conf

export PS1='\u@\h | \W: $ '


export ANDROID_HOME=/usr/local/Caskroom/android-sdk/platform-tools


source ~/projects/dotfiles/shell/export.sh
source ~/projects/dotfiles/shell/function.sh
source ~/projects/dotfiles/shell/source.sh
source ~/projects/dotfiles/shell/alias.sh


alias groot='echo "I am Groot."; cd "$(git rev-parse --show-toplevel)"'

alias cask='brew cask'


export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"