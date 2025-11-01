echo -e "Текущее значение PATH: $PATH\n"
# Временное
PATH="$PATH:$1"
echo "Новое временное значение PATH: $PATH"
# Постоянное
echo "export PATH=\"\$PATH:$1\"" >> ~/.bashrc
source ~/.bashrc
exec bash