# Офіційний легкий образ Node.js
FROM node:20-alpine

# Робоча директорія всередині контейнера
WORKDIR /app

# Спочатку копіюємо package.json 
COPY package.json ./

# Встановлюємо залежності (npm просто відпрацює без помилок)
RUN npm install

# Тепер копіюємо решту файлів (у т.ч. server.js)
COPY . .

# Cloud Run зазвичай передає порт у змінній середовища PORT
EXPOSE 8080

# Команда старту
CMD ["npm", "start"]
