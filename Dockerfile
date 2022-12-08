FROM golang:latest

RUN mkdir /build
WORKDIR /build

RUN export GO111MODULE=on
# COPY . github.com/TheWalkingFat1337/go-microservices:latest
COPY . C:\Users\rouve\Desktop\Anwendungsintegration\github\go-microservices

# RUN cd /build && git clone https://github.com/TheWalkingFat1337/go-microservices.git
RUN cd /build && git clone C:\Users\rouve\Desktop\Anwendungsintegration\github\go-microservices

#RUN cd /build/go-microservices/main.go && go build

EXPOSE 1234


#es is noch trash