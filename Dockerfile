FROM python:3.8-slim-buster


RUN apt update

RUN apt install build-essential -y

RUN apt-get install -y --no-install-recommends \
    freetds-bin \
    ldap-utils \
    libffi6 \
    libkrb5-dev \
    libsasl2-2 \
    libsasl2-modules \
    libssl1.1 \
    locales  \
    lsb-release \
    sasl2-bin \
    sqlite3 \
    unixodbc

WORKDIR /root

COPY airflow.requirements.txt /root/airflow.requirements.txt

RUN pip install -r /root/airflow.requirements.txt  