function bwf
  set -f name $(rbw list | fzf --prompt="Vault > ")
  [ -n "$name" ] && rbw get "$name" | wl-copy -n --sensitive
  echo "Copied: $name"
end
