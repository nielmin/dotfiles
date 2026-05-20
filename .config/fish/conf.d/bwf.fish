function bwf
  local name
  set name $(rbw list | fzf --prompt="Vault > ")
  [ -n "$name" ] && rbw get "$name" | tr -d '\n' | wl-copy
  echo "Copied: $name"
end
