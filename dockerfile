FROM golang:1.20

WORKDIR /app

COPY . .

RUN go mod download

ENV CGO_ENABLED=0 GOOS=linux GOARCH=amd64

RUN go build -o parcel-database

CMD ["/parcel-database"]