FROM node:14

WORKDIR /app

COPY package.json .

# --- ADD THIS LINE ---
# This tells NPM to ignore the SSL error caused by your company proxy
RUN npm config set strict-ssl false
# ---------------------

RUN npm install

COPY . .

VOLUME [ "/app/feedback" ]

EXPOSE 80

CMD [ "node", "server.js" ]