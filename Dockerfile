FROM ubuntu

RUN apt-get update -y

RUN apt-get install openssl -y

COPY . .

RUN mkdir /var/cert

RUN chmod +x /cert-valid.sh

ENTRYPOINT ["/cert-valid.sh"]
