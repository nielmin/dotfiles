function ls
  command ls --color=auto $argv
end

function butane
  command podman run -i --rm -v "$PWD":/pwd quay.io/coreos/butane:release $argv
end

function podlet
  command podman run -it --rm -v "$PWD":/pwd ghcr.io/containers/podlet $argv
end

function qmk
  command podman run -it --rm -v "$PWD":/pwd ghcr.io/qmk/qmk_cli:latest $argv
end
