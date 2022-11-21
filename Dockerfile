FROM node:19-alpine3.15 AS dev

WORKDIR /app

COPY package*.json /app

RUN yarn install

COPY . .

EXPOSE 3000

CMD ["yarn", "dev" ]