FROM python:3.11-slim

RUN apt-get update -y && apt-get upgrade -y
RUN pip3 install -U pip

COPY . /app/
WORKDIR /app/
RUN pip3 install -U -r requirements.txt

CMD bash start

