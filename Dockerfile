FROM node:10 as build-deps
Maintainer Prashanth
WORKDIR /usr/src/app
COPY package.json .
RUN apt-get update
RUN apt-get install yarn -y
RUN npm install -g serve
COPY . .
RUN yarn install
RUN yarn build
EXPOSE 3001
CMD serve -s build -l 3001