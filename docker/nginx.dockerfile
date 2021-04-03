FROM nginx:1.19.9-alpine
LABEL maintainer "Fernando Coutinho <ti.fernando.coutinho@gmail.com>"
ENV PYTHONUBUFFERED 1
ENV LANG C.UTF-8
ENV DEBIAN_FRONTEND=noninteractive
COPY /docker/config/nginx.conf /etc/nginx/nginx.conf
COPY . /var/www
EXPOSE 80 443
ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]
