function ls
  command ls --color=auto $argv
end

function butane
  command podman run -i --rm -v "$PWD":/pwd quay.io/coreos/butane:release $argv
end
