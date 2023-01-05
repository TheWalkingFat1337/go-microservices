FROM golang:latest

WORKDIR /user

COPY . /user

RUN go build -o main

EXPOSE 1234

CMD [ "/user/main" ]