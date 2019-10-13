if not contains $HOME/.bin $PATH
  set -x PATH $HOME/.bin $PATH
end

if not contains $HOME/.rbenv/bin $PATH
  set -x PATH $HOME/.rbenv/bin $PATH
end
eval (starship init fish)
