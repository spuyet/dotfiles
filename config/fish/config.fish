if not contains $HOME/.bin $PATH
  set -x PATH $HOME/.bin $PATH
end

if not contains $HOME/.rbenv/shims $PATH
  set -x PATH $HOME/.rbenv/shims $PATH
end


if not contains $HOME/.rbenv/bin $PATH
  set -x PATH $HOME/.rbenv/bin $PATH
end

if not contains /usr/local/go/bin $PATH
  set -x PATH /usr/local/go/bin $PATH
end

if not contains $HOME/Projects/go/bin $PATH
  set -x PATH $HOME/Projects/go/bin $PATH
end

if not contains $HOME/Projects/go $GOPATH
  set -x GOPATH $HOME/Projects/go
end

if not contains $HOME/Projects/go $GOPATH
  set -x GOPATH $HOME/Projects/go
end

set -gx EDITOR code

alias vpn="ikec -r typhon.vpn -u USERNAME -p PASSWORD -a"

eval (starship init fish)
