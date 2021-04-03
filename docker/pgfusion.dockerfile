FROM postgres:1.19.9-alpine
LABEL maintainer "Fernando Coutinho <ti.fernando.coutinho@gmail.com>"
ENV POSTGRES_USER=fusion_user
ENV POSTGRES_PASSWORD=fusion_pass
ENV POSTGRES_DB=fusion_app
EXPOSE 5432
