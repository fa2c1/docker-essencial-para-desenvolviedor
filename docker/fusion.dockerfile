FROM python:3.10.0a6-alpine3.13 
LABEL maintainer "Fernando Coutinho <ti.fernando.coutinho@gmail.com>"
COPY . /var/www
WORKDIR /var/www
RUN apk update && apk add zlib-dev jpeg-dev gcc musl-dev python3-dev postgresql-dev && pip install -r requirements.txt && python manage.py collectstatic --noinput
ENTRYPOINT gunicorn --bind 0.0.0.0:8000 fusion.wsgi
EXPOSE 8000
