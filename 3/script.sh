read -p "Введите число: " num
if [ $num -gt 0 ]; then
    echo "$num - положиельное"
    i=1
    whie [$1 -]
elif [ $num -lt 0 ]; then
    echo "$num - отрицательное"
else
    echo "$num равно нулю"
fi