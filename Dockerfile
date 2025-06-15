FROM python:3.11

RUN apt update
RUN apt upgrade -y
RUN apt autoclean -y

ENV LANG jp_JP.UTF-8
ENV TZ JST-9
WORKDIR /app

COPY ./app/requirements.txt /app
RUN pip install --upgrade pip
RUN pip install --upgrade setuptools
RUN pip install -r requirements.txt