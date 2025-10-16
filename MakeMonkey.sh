#!/bin/bash
wget -O monkey.jpeg https://raw.githubusercontent.com/Cheese-Curd/Random-Storage/refs/heads/main/monkey.jpeg

while true; do
  i=1
  dest=~/Desktop/monkey_$i.jpeg
  while [[ -e "$dest" ]]; do
    ((i++))
    dest=~/Desktop/monkey_$i.jpeg
  done
  cp monkey.jpeg "$dest"
  sleep 1
done
