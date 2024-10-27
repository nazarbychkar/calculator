#!/bin/bash

# варіант: 2302 % 6 = 4
# 4) Комбінація з двох маленьких скриптів.

# перевірка, чи переданий параметр з директорією
if [ -z "$1" ]; then
  echo "Вкажіть цільову директорію."
  exit 1
fi

TARGET_DIR="$1"

# функція для видалення порожніх файлів
remove_empty_files() {
  find "$1" -type f -empty -delete
}

# функція для видалення порожніх директорій
remove_empty_dirs() {
  find "$1" -type d -empty -delete
}

# видалення порожніх файлів і директорій
remove_empty_files "$TARGET_DIR"
remove_empty_dirs "$TARGET_DIR"

echo "Порожні файли та директорії видалені в $TARGET_DIR"
