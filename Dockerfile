FROM python:3.6.13-alpine

RUN pip3 install machinae

RUN apt-get  update

RUN apt-get install git

RUN git clone https://github.com/DustyMMiller/machinae_docker

RUN cp ./machinae_docker/machinae.yml /etc/machinae.yml

ENTRYPOINT ["/usr/local/bin/machinae"]
