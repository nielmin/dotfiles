function ls
  command ls --color=auto --group-directories-first $argv
end

function ll
  command ls -ahl --color=auto --group-directories-first $argv
end

function nv
  command nvim $argv
end
