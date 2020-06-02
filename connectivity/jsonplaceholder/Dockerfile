FROM node:current

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY db.json /usr/src/app

RUN npm install -g json-server

EXPOSE 3000
CMD ["node", "/usr/local/bin/json-server", "--watch", "db.json", "--host", "0.0.0.0"]
