FROM node:alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV BACKEND_URI=${BACKEND_URI}

ENV PATH /app/node_modules/.bin:$PATH

EXPOSE ${PORT}

CMD ["npm", "start"]
