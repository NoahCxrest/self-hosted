FROM getsentry/self-hosted:latest

WORKDIR /workdir

RUN ./install.sh --skip-user-setup

EXPOSE 9000

CMD ["docker", "compose", "up", "--wait"]
