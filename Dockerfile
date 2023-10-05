FROM node:alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

# ENV REACT_URL=${REACT_URL}
ENV PATH /app/node_modules/.bin:$PATH

EXPOSE ${PORT}

CMD ["npm", "start"]
