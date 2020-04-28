FROM nginx:1.17.4-alpine

ENV APP_HOME=/home/hello_django

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d
COPY graphhopper.conf /etc/nginx
COPY hello_django.conf /etc/nginx
COPY ssl.conf /etc/nginx

# Create the appropriate directories
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
RUN mkdir $APP_HOME/static
RUN mkdir /var/www && mkdir /var/www/certbot
RUN mkdir /etc/letsencrypt
