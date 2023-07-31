FROM node:16.20.1-alpine

WORKDIR /usr/api

COPY . .

RUN npm install -g @nestjs/cli

RUN npm ci --only=production

RUN npm run build

CMD [ "node", "dist/main.js" ]