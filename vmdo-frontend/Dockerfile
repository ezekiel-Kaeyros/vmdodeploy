FROM node:18-alpine3.17 as angular
#FROM node:12.14-alpine AS build

WORKDIR /app

COPY . .
RUN npm cache clean --force
RUN npm install --force
RUN npm run build --prod

FROM httpd:alpine3.15

WORKDIR /usr/local/apache2/htdocs
COPY --from=angular /app/dist/test .
