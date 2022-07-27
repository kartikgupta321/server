FROM node:alpine

WORKDIR /app

COPY package*.json ./

RUN npm install --silent

COPY . .

EXPOSE 5000

CMD ["npm", "run", "devStart"]