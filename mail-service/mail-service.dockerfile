FROM alpine:latest

RUN mkdir /app

COPY bin/mailerApp /app
COPY templates /templates

CMD [ "/app/mailerApp"]