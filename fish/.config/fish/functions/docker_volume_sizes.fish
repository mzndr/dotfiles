docker volume ls -q |
while read vol;
  set mount (docker volume inspect "$vol" | jq -r '.[0].Mountpoint')
  #echo "=== $vol ==="
  sudo du -sh "$mount"
end
