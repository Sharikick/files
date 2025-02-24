# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Настройка PATH
export PATH="$HOME/.local/bin:$HOME/bin:$HOME/.config/composer/vendor/bin:$PATH"

# Настройка редактора по умолчанию
export EDITOR="nvim"

# Git алиасы
alias gs='git status'
alias gc='git commit'
alias gp='git push'

# Работа с менеджером пакетов
alias update="sudo dnf update"
alias install="sudo dnf install"

# Просмотр процессов
alias psa='ps aux'
alias psg='ps aux | grep'

# Очистка терминала
alias cls='clear'

# Размер истории
HISTSIZE=10000
HISTFILESIZE=20000

# Добавление временных меток в историю
HISTTIMEFORMAT="%d/%m/%y %T "

# Игнорирование дубликатов и команд
HISTCONTROL=ignoredups:ignorespace

# Функция для получения имени ветки
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Простой prompt
PS1='\[\e[32m\]\u\[\e[m\]:\[\e[33m\]$(basename "\w")\[\e[m\]\[\e[34m\]$(parse_git_branch)\[\e[m\]\$ '
