#!/usr/bin/env fish

function hanoi
  if test $argv[1] -gt 1
    hanoi (math $argv[1] - 1) "$argv[2]" "$argv[4]" "$argv[3]"
  end

  echo "$argv[2]""=>""$argv[3]"

  if test $argv[1] -gt 1
    hanoi (math $argv[1] - 1) "$argv[4]" "$argv[3]" "$argv[2]"
  end
end

read n
hanoi $n "a" "b" "c"
