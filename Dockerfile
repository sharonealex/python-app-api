FROM python:3.7-alpine
ENV PYTHONUNBUFFERED 1
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

#so that no one runs this application in root mode.
RUN adduser -D user
USER user
