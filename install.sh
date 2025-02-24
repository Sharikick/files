#!/bin/bash

echo "[$(date)] Начало установки..."

# Функция для удаления директории
delete_dir() {
    if [[ $(whoami) -ne $(stat -c '%U' $1) ]]; then
        echo "У вас нет прав на исполнение этого скрипта"
        exit 1
    fi

    if [[ -d $1 ]]; then
        echo "[$(date)] Удаление конфига по пути: $1"
        rm -r $1
    else
        echo "[$(date)] Не существует директории по пути: $1"
    fi
}

delete_dir "$HOME/.config/nvim"
delete_dir "$HOME/.local/state/nvim"
delete_dir "$HOME/.local/share/nvim"

exit 0
