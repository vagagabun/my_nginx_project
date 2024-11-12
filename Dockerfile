# Используем официальный образ Nginx
FROM nginx:latest

# Копируем index.html в папку, где nginx будет искать файлы
COPY index.html /usr/share/nginx/html/index.html

# Копируем папку assets в папку Nginx для статических файлов
COPY assets /usr/share/nginx/html/assets

# Открываем порт 80 для доступа к сайту
EXPOSE 80
