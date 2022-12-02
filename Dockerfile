FROM golang:alpine3.17

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

RUN go build -o /full-cycle-docker-go

CMD ["/full-cycle-docker-go"]