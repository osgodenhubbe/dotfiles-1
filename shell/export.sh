# Set NeoVim/Vim to be the default editor.
#export EDITOR='nvim';
export EDITOR='vim';

# Le fancy color grep.
export GREP_OPTIONS="--color=auto";

# Make vim the default editor.
export EDITOR='vim';


##### NODE ####

# Enable persistent REPL history for `node`.
export NODE_REPL_HISTORY=~/.node_history;

# Allow 32� entries; the default is 1000.
export NODE_REPL_HISTORY_SIZE='32768';

# Use sloppy mode by default, matching web browsers.
export NODE_REPL_MODE='sloppy';

#### PYTHON ####
# Make Python use UTF-8 encoding for output to stdin, stdout, and stderr.
export PYTHONIOENCODING='UTF-8';

# Increase Bash history size. Allow 32� entries; the default is 500.
export HISTSIZE='32768';
export HISTFILESIZE="${HISTSIZE}";

# Omit duplicates and commands that begin with a space from history.
export HISTCONTROL='ignoreboth';

# Prefer US English and use UTF-8.
export LANG='en_US.UTF-8';
export LC_ALL='en_US.UTF-8';

# Highlight section titles in manual pages.
export LESS_TERMCAP_md="${yellow}";

# Don�t clear the screen after quitting a manual page.
export MANPAGER='less -X';

# Avoid issues with `gpg` as installed via Homebrew.
# https://stackoverflow.com/a/42265848/96656
export GPG_TTY=$(tty);

# Rust Cargo
export PATH="$HOME/.cargo/bin:$PATH"

if [[ $OS == "OSX" ]] ; then
    # Homebrew Core Utils
    export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"

    # Java JDK
    export JAVA_HOME=/usr/local/Cellar/adoptopenjdk-openjdk8/jdk8u172-b11
    export PATH=$PATH:$JAVA_HOME
fi
