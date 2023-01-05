FROM golang:latest

WORKDIR /app

COPY . /app

RUN go build -o main

EXPOSE 1234

CMD [ "/app/main" ]