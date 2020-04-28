FROM python:3.7-alpine

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV APP_HOME=/home/hello_django

# Create the appropriate directories
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
RUN mkdir $APP_HOME/static

# Copy over requirements first, so that they can be used from cache, even if other files in
# the directory have been changed.
ADD ./requirements.txt $APP_HOME/requirements.txt
RUN pip install -r requirements.txt \
    && pip install gunicorn
ADD . $APP_HOME

# Make executable
RUN chmod +x $APP_HOME/entrypoint.sh

ENTRYPOINT $APP_HOME/entrypoint.sh
