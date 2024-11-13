# Используем официальный образ Nginx
FROM nginx:alpine

# Копируем нашу конфигурацию Nginx в контейнер
COPY nginx.conf /etc/nginx/nginx.conf

# Копируем папки с проектом (desktop и mobile) в контейнер
COPY desktop /usr/share/nginx/html/desktop
COPY mobile /usr/share/nginx/html/mobile

# Открываем порт 80
EXPOSE 80

# Запускаем Nginx
CMD ["nginx", "-g", "daemon off;"]