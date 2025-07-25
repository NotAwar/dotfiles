if test -d (brew --prefix)"/share/fish/completions"
    set -p fish_complete_path (brew --prefix)/share/fish/completions
end

if test -d (brew --prefix)"/share/fish/vendor_completions.d"
    set -p fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
end


if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias devopsmigration="dotnet /Users/awar/Documents/azure-devops-migration-tools/src/MigrationTools.ConsoleCore/bin/Debug/net8.0/devopsmigration.dll"

set -Ux fish_user_paths /opt/homebrew/bin $fish_user_paths

status --is-interactive; and source (pyenv init -|psub)
status --is-interactive; and source (pyenv virtualenv-init -|psub)

# Created by `pipx` on 2024-11-14 14:13:56
set PATH $PATH /Users/awar/.local/bin

# Remove legacy hooks to prevent errors when upgrading.
# This can be removed when we cleanup other universal abbr code.
functions -e _git_install _git_update _git_uninstall


# fisher initialization, protected as omf also tries to run it.
set -q fisher_path; or set -l fisher_path $__fish_config_dir
if test -f $fisher_path/functions/__git.init.fish
  source $fisher_path/functions/__git.init.fish
  __git.init
end

set GPG_TTY $(tty)
export GPG_TTY

function __tabby_working_directory_reporting --on-event fish_prompt
    echo -en "\e]1337;CurrentDir=$PWD\x7"
end

fish_add_path /Users/awar/.spicetify

# Only for interactive shells should we touch PYENV_ROOT and the shims path:
if status --is-interactive
    # 1) Set where pyenv lives
    set -gx PYENV_ROOT $HOME/.pyenv

    # 2) Prepend both the pyenv bin and shims directories to PATH
    set -gx PATH $PYENV_ROOT/bin $PYENV_ROOT/shims $PATH

    # 3) Initialize pyenv itself (for `pyenv shell`, `pyenv rehash`, etc.)
    #    and the pyenv-virtualenv hook
    source (pyenv init --path | psub)
    source (pyenv init -     | psub)
    source (pyenv virtualenv-init - | psub)
end
