# syntax=docker/dockerfile:1
FROM node:12.18.1
ENV NODE_ENV=production
WORKDIR /app
COPY ["package.json", "yarn.lock", "./"]
RUN npm install --production
COPY . .
CMD ["node", "server.js"]
