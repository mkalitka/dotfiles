# Use exa instead of ls
function ls --wraps='exa -gh --icons --group-directories-first' --description 'alias ls=exa -gh --icons --group-directories-first'
  exa -gh --icons --group-directories-first $argv
end
