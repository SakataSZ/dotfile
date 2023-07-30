# less
set -gx LESSHISTFILE /tmp/

# volta
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

# pyenv
set -gx PYENV_ROOT $HOME/.pyenv/
set -gx PATH $PYENV_ROOT/bin $PATH
pyenv init - | source

# rust
set -gx PATH $HOME/.cargo/bin/ $PATH

