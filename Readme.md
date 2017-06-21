# Связка nginx и Redis при помощи lua

Собираем docker-контейнер на базе OpenResty

    docker build -t igorsimdyanov/nginx-lua-redis .

Для отладки, можно получить доступ в контейнер при помощи команды

    docker run -it igorsimdyanov/nginx-lua-redis /bin/bash

Запускаем контейнера, с доступом к nginx внутри контейнера на 8088 порту

    docker run -d -p 8088:80 -v "$(pwd)"/logs:/var/log/nginx igorsimdyanov/nginx-lua-redis

Обращение к nginx контейнера с хост-машины

    curl http://localhost:8088/hellolua
