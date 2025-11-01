if [ $# -ne 1 ];
then
    echo "Отсутствует указание файла для поиска"
    exit 1
fi
if [ -e $1 ]; then
    echo -e "$1 - существует\n"
else
    echo -e "$1 - отсутствует\n"
fi
for item in *; do
    if [ -f "$item" ]; then
        echo "Файл: $item"
    elif [ -d "$item" ]; then
        echo "Директория: $item"
    elif [ -L "$item" ]; then
        echo "Симлинк: $item"
    else
        "Другой тип: $item"
    fi
    permissions=$(ls -ld "$item" | awk '{print $1}')
    echo -e "Доступы: $permissions \n"
done
    