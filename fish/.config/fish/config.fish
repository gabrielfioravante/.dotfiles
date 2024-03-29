set fish_greeting ""
set -gx EDITOR nvim
set -U fish_user_paths /opt/homebrew/bin/ $fish_user_paths
set -U fish_user_paths $HOME/.cargo/bin/ $fish_user_paths
set -U fish_user_paths /usr/local/go/bin $fish_user_paths
set -U fish_user_paths $HOME/go/bin $fish_user_paths

alias sp='cd "$(find ~/projects/ -mindepth 1 -maxdepth 1 -type d | fzf)"'
alias ll="ls -l"
alias lla="ll -a"
alias g="git"
alias cht="~/scripts/tmux-cht.sh"
alias ts="~/scripts/tmux-sessionizer.sh"
alias vim="nvim"
alias cat="bat"
alias lg="lazygit"

if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_vi_key_bindings
fish_vi_cursor --force-iterm
set -g fish_cursor_insert block
set -g fish_cursor_default block

bind -M insert \cY accept-autosuggestion

if test -d ~/.asdf
    source ~/.asdf/asdf.fish
end

if test -d $HOME/.opam/opam-init
    source $HOME/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
end

starship init fish | source
