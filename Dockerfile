FROM alpine:latest

WORKDIR /usr/src/app


RUN apk update && apk add --update git nodejs npm
RUN git init
RUN git clone https://github.com/im-topezi/docker_puhelinluettelo.git
RUN cd osa3/puhelinluettelo npm install
RUN cd osa3/puhelinluetteloBackend && npm install

CMD cd osa3/puhelinluetteloBackend && npm run start
