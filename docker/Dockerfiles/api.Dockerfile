FROM node:10.11.0

LABEL maintainer="vanhuy.doan@gmail.com"

RUN apt-get update && apt-get install -y vim

RUN npm i nodemon babel-cli chalk -g

RUN mkdir /working

WORKDIR /working

EXPOSE 8080

CMD ["npm", "start"]