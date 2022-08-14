FROM node:18.7.0-alpine3.15
ENV CYPRESS_INSTALL_BINARY=0
WORKDIR /app
RUN chown node:node /app
RUN apk update && apk add bash
USER node
COPY . .