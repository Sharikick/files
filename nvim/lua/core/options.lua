----------------------
-- GENERAL SETTINGS --
----------------------

-- Отключить мышку
vim.opt.mouse = ""

-- Общий буфер с внешним миром
vim.opt.clipboard = "unnamedplus"

-- Кодировка
vim.opt.encoding = "UTF-8"

-- Отключить swap файлы
vim.opt.swapfile = false

-- Заменить табы на пробелы
vim.opt.expandtab = true

-- Размер табуляции
vim.opt.tabstop = 4

-- Размер отступа
vim.opt.shiftwidth = 4

-- Включает автоматическое отступы при новой строке
vim.opt.autoindent = true

-- Умное автоотступание
vim.opt.smartindent = true

-- Отключить перенос строки
vim.opt.wrap = true

-- Отключить резервные копии
vim.opt.backup = false

vim.g.mapleader = " "
vim.g.maplocalleader = " "

---------------------
-- VISUAL SETTINGS --
---------------------

-- Показывать номера строк
vim.opt.number = true

-- Относительная нумерация
vim.opt.relativenumber = true

-- Выделить текущую строку
vim.opt.cursorline = true

-- Отступ при прокрутке
vim.opt.scrolloff = 15

-- Поддержка true-color
vim.opt.termguicolors = true

-- Всегда показывать колонку для знаков
vim.opt.signcolumn = "yes"

vim.opt.laststatus = 0
vim.opt.ruler = false
vim.opt.showcmd = false
vim.opt.cmdheight = 1

---------------------
-- SEARCH SETTINGS --
---------------------

-- Делает поиск без учета регистра
vim.opt.ignorecase = true

-- Если в поиске есть хотя бы одна заглавная буква, то поиск будет учитывать регистр
vim.opt.smartcase = true

-- Отключить подсветку поиска
vim.opt.hlsearch = false

-- Инкрементальный поиск
vim.opt.incsearch = true

----------------------
-- NEOVIDE SETTINGS --
----------------------

-- Межстрочный интервал
vim.opt.linespace = 10
