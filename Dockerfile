FROM python:3.7-alpine

MAINTAINER London App Developer Ltd

ENV PYTHONUNBUFFERED 1

RUN apk update && apk add bash

COPY ./requirements.txt /requirements.txt

RUN pip install -r ./requirements.txt

RUN mkdir /app

WORKDIR /app

COPY ./app /app

RUN adduser -D user

USER user

