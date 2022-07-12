## remove fish greeting
set -g -x fish_greeting ''

## launch tmux with console + split it
if status is-interactive
and not set -q TMUX
  # split horizontal and vertical
  # exec tmux new-session \; split-window -h \; split-window -v \; attach
  
  # split horizontal only
  exec tmux new-session \; split-window -h \; attach
end

## aliases
alias g "git"
alias do "docker"
alias vi "nvim"
alias cls "clear"
alias ht "htop"
