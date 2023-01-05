FROM golang:latest

# Set the Current Working Directory inside the container
WORKDIR /app

COPY . /app

RUN go build -o main

EXPOSE 1234

EXPOSE 1337