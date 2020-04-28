FROM certbot/certbot:v1.3.0

RUN apk update && apk add bash curl netcat-openbsd
ENV APP_HOME=/home/hello_django

RUN mkdir -p /var/www && mkdir /var/www/certbot
RUN mkdir -p /etc/letsencrypt && mkdir -p /etc/letsencrypt/live
RUN mkdir -p $APP_HOME

COPY ./setup.sh $APP_HOME
RUN chmod +x $APP_HOME/setup.sh
