# Homebrew completions
if test -d (brew --prefix)"/share/fish/completions"
    set -p fish_complete_path (brew --prefix)/share/fish/completions
end
if test -d (brew --prefix)"/share/fish/vendor_completions.d"
    set -p fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
end

# GPG configuration
set -gx GPG_TTY (tty)

# Theme
fish_config theme choose "Rosé Pine"

if status is-interactive
    # Pyenv configuration
    set -gx PYENV_ROOT $HOME/.pyenv
    fish_add_path $PYENV_ROOT/bin $PYENV_ROOT/shims
    source (pyenv init --path | psub)
    source (pyenv init - | psub)
    source (pyenv virtualenv-init - | psub)

    # Fisher git plugin
    set -q fisher_path; or set -l fisher_path $__fish_config_dir
    if test -f $fisher_path/functions/__git.init.fish
        source $fisher_path/functions/__git.init.fish
        __git.init
    end
end

# PATH configuration (consolidated)
fish_add_path -g \
    /opt/homebrew/bin \
    /usr/local/bin \
    /usr/local/opt/curl/bin \
    /usr/local/opt/qt/bin \
    /usr/local/opt/python@3.8/bin \
    /usr/local/opt/helm@2/bin \
    ~/.local/bin \
    ~/.rbenv/shims \
    ~/.tfenv/bin \
    ~/go/bin \
    ~/.bin \
    ~/.spicetify
