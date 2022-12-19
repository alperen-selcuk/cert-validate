FROM ubuntu

FROM apt-get update -y

FROM apt-get install openssl -y

COPY . .

RUN mkdir /var/cert

RUN chmod +x /cert-valid.sh

ENTRYPOINT ["/cert-valid.sh"]
