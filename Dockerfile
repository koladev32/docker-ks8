FROM node:20-alpine

WORKDIR /node-app

COPY serve.js /node-app/
COPY package.json /node-app/
COPY restaurant.json /node-app/

RUN npm install

CMD ["node", "serve"]
