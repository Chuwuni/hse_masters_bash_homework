#!/bin/bash

# Считаем количество строк в файле input.txt и перенаправим результат в output.txt
wc -l < input.txt > output.txt

# Попытаемся выполнить ls для несуществующего файла, и ошибки перенаправим в error.log
ls nonexistent_file 2> error.log