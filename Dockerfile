FROM golang:latest

# Set the Current Working Directory inside the container
WORKDIR /app

# We want to populate the module cache based on the go.{mod,sum} files.
COPY go.mod .
COPY go.sum .

RUN go mod download

COPY . .

# Build the Go app
RUN go build

# This container exposes port 1234 to the outside world
EXPOSE 1234

# Run the binary program produced by `go install`
CMD ["./go-microservices"]