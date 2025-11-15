FROM alpine:latest

RUN mkdir /app

COPY bin/loggerServiceApp /app

CMD [ "/app/loggerServiceApp"]