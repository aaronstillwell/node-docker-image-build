FROM node:dubnium-slim

ARG npm_auth
ARG sha

WORKDIR /usr/src/app

ENV NODE_ENV=production
ENV UV_THREADPOOL_SIZE=128

EXPOSE 3000

COPY package*.json ./
COPY node_modules* ./

RUN npm install

COPY . . 

ENV SHA $sha

CMD ["npm", "start"]