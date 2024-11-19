FROM python3.11-alpine

WORKDIR /app

COPY serve.js /app/
COPY package.json /app/
COPY restaurant.json /app/

RUN npm install

CMD ["node", "serve"]
