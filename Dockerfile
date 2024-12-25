# Используем базовый образ
FROM jupyter/all-spark-notebook:latest

# Устанавливаем PostgreSQL JDBC драйвер
USER root
RUN wget -P /usr/local/spark/jars https://jdbc.postgresql.org/download/postgresql-42.3.1.jar

# Возвращаемся к стандартному пользователю
USER ${NB_UID}