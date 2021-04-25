FROM python:3.8-alpine

RUN apk update

RUN apk add git

RUN apk add libmagic

RUN pip3 install filemagic==1.6

RUN pip3 install python-magic

RUN pip3 install machinae

RUN git clone https://github.com/DustyMMiller/machinae_docker

RUN cp ./machinae_docker/machinae.yml /etc/machinae.yml

ENTRYPOINT ["/usr/local/bin/machinae"]
