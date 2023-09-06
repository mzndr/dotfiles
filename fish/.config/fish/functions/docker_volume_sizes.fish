#!/usr/bin/fish

docker volume ls -q |
while read vol;
  set mount (docker volume inspect "$vol" | jq -r '.[0].Mountpoint')
  set size (sudo du -sh "$mount" | sed 's/\s.*$//')
  set table (string join '' "$table\n$vol  $size")
end

echo -e $table | column -t -N "Volume,Size"
