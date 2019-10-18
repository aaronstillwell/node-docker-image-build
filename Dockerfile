FROM node:dubnium-slim

ARG npm_auth

WORKDIR /usr/src/app

ENV NODE_ENV=production
ENV UV_THREADPOOL_SIZE=128

ARG sha
ENV SHA $sha

EXPOSE 3000

COPY package*.json ./
COPY node_modules* ./

RUN npm install

COPY . . 

CMD ["npm", "start"]