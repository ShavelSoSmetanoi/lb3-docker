# Используем базовый образ Go
FROM golang:1.22-alpine

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем модуль и исходный код
COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY . .

# Сборка приложения
RUN go build -o /simple-web-app

# Указываем порт, который будет слушать приложение
EXPOSE 8080

# Запуск приложения
CMD [ "/simple-web-app" ]
