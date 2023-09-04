# Используйте официальный образ Python
FROM python:3.9

# Установите рабочую директорию
WORKDIR /app

# Установите зависимости
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копируйте исходный код
COPY . .

# Задайте переменные окружения, если необходимо
# ENV NAME World

# Запустите приложение
CMD ["flask", "run", "--host=0.0.0.0"]