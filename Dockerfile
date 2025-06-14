FROM node:18-alpine

WORKDIR /app

COPY package.json ./
RUN yarn install

COPY . .
RUN yarn prisma generate

EXPOSE 3333

CMD ["yarn", "dev"] 