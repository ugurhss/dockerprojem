# FROM nginx:latest

# # Copy the nginx configuration file
# COPY . /usr/share/nginx/html
# EXPOSE 80
# # Start ugur

FROM node:14

# Çalışma dizinine geç
WORKDIR /app

# Bağımlılıkları yükle
COPY package*.json ./
RUN npm install

# WebSocket server'ı kopyala
COPY . .

EXPOSE 8081

# Sunucu başlat
CMD ["node", "websocket-server.js"]
