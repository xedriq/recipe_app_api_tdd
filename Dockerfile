FROM python:3.7-alpine3.14
ENV PYTHONUNBUFFERED 1
COPY requirements.txt /requirements.txt
RUN pip install -r /requirements.txt
WORKDIR /app
COPY ./app .
RUN adduser -D user
USER user