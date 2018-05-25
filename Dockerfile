FROM node:latest

WORKDIR /usr/src/app

COPY ./crud-node-postgres/package*.json ./
RUN npm install

COPY ./crud-node-postgres/ ./

RUN npm install bower

COPY ./crud-node-postgres/bower*.json ./
RUN npx bower install --allow-root

EXPOSE 3090

CMD [ "npm", "start" ]