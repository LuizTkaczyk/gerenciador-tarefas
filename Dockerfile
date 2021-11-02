FROM node:14-alpine AS gerenciadorAngular
WORKDIR /app
COPY package.json /app
RUN npm install --silent
COPY . .
RUN npm run build

FROM nginx:alpine
VOLUME /var/cache/nginx

COPY --from=gerenciadorAngular app/dist/gerenciador-tarefas /usr/share/nginx/html
COPY ./config/nginx.conf /etc/nginx/conf.d/default.conf