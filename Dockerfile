FROM docker:24.0.7-cli

RUN apk add --no-cache bash curl git docker-compose

WORKDIR /app

RUN git clone https://github.com/getsentry/self-hosted.git . && git checkout master

RUN ./install.sh --minimal

EXPOSE 9000

CMD ["docker-compose", "up", "--wait"]
