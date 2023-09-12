FROM python:alpine3.18

ENV PORT=7240
ENV VERSION=0.3.1
RUN mkdir /server
RUN mkdir /server/src

ADD ./serverconfig.sh /serverconfig.sh
ADD ./startup.sh /startup.sh

RUN apk add wget unzip

WORKDIR /server

RUN wget https://github.com/kegsmr/sc4mp-server/archive/refs/tags/v$VERSION.zip
RUN unzip ./v$VERSION.zip -d ./src
RUN mv ./src/sc4mp-server-$VERSION/* .
RUN rm -r ./src
RUN rm ./v$VERSION.zip

RUN mkdir /server/_SC4MP

EXPOSE $PORT

CMD [ "/startup.sh" ]
