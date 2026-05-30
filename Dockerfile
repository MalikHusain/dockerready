FROM node:18-alpine

WORKDIR /app

COPY app1/package*.json ./app1/
COPY app2/package*.json ./app2/

RUN cd app1 && npm install
RUN cd app2 && npm install

COPY app1/ ./app1/
COPY app2/ ./app2/

EXPOSE 3001
EXPOSE 3002

RUN npm install -g concurrently

CMD [\"concurrently\", \"npm run --prefix app1 start\", \"npm run --prefix app2 start\"]
