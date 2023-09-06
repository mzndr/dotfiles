#!/usr/bin/fish

echo -e "Volume\t\t\t\t\t\t\t\t\tSize" # Very professional
docker volume ls -q |
while read vol;
  set mount (docker volume inspect "$vol" | jq -r '.[0].Mountpoint')
  set size (sudo du -sh "$mount" | sed 's/\s.*$//')
  echo -e "$vol\t$size"
end
