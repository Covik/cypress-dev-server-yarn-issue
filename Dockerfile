FROM node:18.7.0-alpine3.15
WORKDIR /app
RUN chown node:node /app
RUN apk update && apk add bash
USER node
COPY . .