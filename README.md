# 🚀 NeeroCMD - Консольная оболочка для Windows

[![Copyright](https://img.shields.io/badge/COPYRIGHT-xoladev%20🔥-red?style=for-the-badge)](https://github.com/xoladev)
[![Version](https://img.shields.io/badge/Version-1.5.3-blue?style=for-the-badge)](https://github.com/xoladev/Quantum-Experience/releases)
[![License](https://img.shields.io/badge/License-MIT-orange?style=for-the-badge)](LICENSE)
[![Downloads](https://img.shields.io/github/downloads/xoladev/NeeroCMD/total?style=for-the-badge&logo=github)]([https://github.com/xoladev/NeeroCMD/releases)

NeeroCMD - это кастомная консольная оболочка, написанная на Batch, с поддержкой тем оформления, отладки и модульной системы команд.

## 🚀 Быстрый старт

1. **Клонируйте или скачайте проект**
2. **Запустите одним из способов:**
   - `NeeroCMD.lnk` - основной запуск
   - `Debugger.lnk` - запуск с отладчиком

## ⚙️ Настройки

Файл `settings.json` определяет тему оформления:

```json
{
    "Theme": "Black"  // Доступные значения: "Black", "White"
}
```

## ⚠️ Требования
* Операционная система: Windows 7/8/10/11

## 🛠️ Разработка
### Добавление новой команды:
* Создайте файл в папке resources/commands/
* Назовите файл как имя команды с расширением .bat
* Скрипт автоматически распознает команду при вводе
Пример команды:
```batch
@echo off
echo Это пример пользовательской команды
echo Параметры: %*
```