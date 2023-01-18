FROM nginx:1.23.3-alpine
WORKDIR /usr/share/nginx/html
COPY . . 
RUN chmod 777 ./images
COPY ./nginx.conf /etc/nginx/conf.d/default.conf