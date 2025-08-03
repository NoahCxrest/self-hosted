FROM getsentry/self-hosted:latest

WORKDIR /workdir

EXPOSE 9000

CMD ["docker", "compose", "up", "--wait"]
