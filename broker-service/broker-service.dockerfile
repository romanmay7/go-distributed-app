#base go image
FROM golang:1.18-alpine as builder
RUN mkdir /app

COPY . /app

WORKDIR /app

RUN CGO_ENABLED=0 go build -o brokerApp ./cmd/api

#Add Permissions to make sure it is executable

RUN chmod +x /app/brokerApp

#Build a tiny docker image and copy just executable from the previous docker image
FROM alpine:latest

RUN mkdir /app

COPY --from=builder /app/brokerApp /app

CMD [ "/app/brokerApp" ]
