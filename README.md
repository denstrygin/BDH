# Инструкция к проверке
```
Для наиболее быстрой проверки есть вариант использовать образ с уже заполенной бд. Для этого необходимо загрузить образ из архива (архив кину в личке) 

"docker load -i postgres_backup.tar"

и заменить данные в docker-compose.yml для postgres на

postgres:
    image: postgres_backup:latest
    container_name: postgres
    ports:
      - "5432:5432"
    environment:
      POSTGRES_USER: postgres
      POSTGRES_PASSWORD: postgres
      POSTGRES_DB: dwh
    volumes:
      - postgres_data:/var/lib/postgresql/data
    networks:
      - dwh_network 
```
 - После клонирования репозитория запустить docker-compose для развертывания образов. В PSQL автоматически создадутся нужные таблицы.
 - Заполнить таблицы данными через бобра или любого другого инструмента
 - Запустить код из блокнота BDH.ipynb