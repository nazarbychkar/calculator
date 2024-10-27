#!/bin/bash

# перевірка, чи переданий параметр з директорією
if [ -z "$1" ]; then
  echo "Вкажіть цільову директорію."
  exit 1
fi

TARGET_DIR="$1"

# запуск першого скрипта в новому вікні терміналу
gnome-terminal -- bash -c "./clean_directory.sh '$TARGET_DIR'; exec bash"
