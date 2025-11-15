FROM alpine:latest

RUN mkdir /app

COPY bin/listenerApp /app

CMD [ "/app/listenerApp"]