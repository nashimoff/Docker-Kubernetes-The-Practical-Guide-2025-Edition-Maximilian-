FROM node:14
WORKDIR /app
COPY package.json .

RUN npm config set strict-ssl false

RUN npm install

COPY . .

EXPOSE 80

# VOLUME [ "/app/node_modules" ]

CMD [ "npm", "start" ]
#