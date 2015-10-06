FROM nginx:latest

RUN apt-get update -y
RUN apt-get install -y jq netcat-openbsd

ADD run-proxy /bin/

EXPOSE 80

CMD run-proxy
