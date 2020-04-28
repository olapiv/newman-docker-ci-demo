FROM postman/newman:latest

ENV APP_HOME=/home/hello_django
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

ADD . $APP_HOME
RUN chmod +x $APP_HOME/entrypoint.sh