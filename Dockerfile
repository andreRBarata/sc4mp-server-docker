FROM python:alpine3.18

ENV PORT=7240
RUN mkdir /server
RUN mkdir /server/src
RUN mkdir /server/releases
RUN mkdir /server/_SC4MP

ADD ./serverconfig.sh /serverconfig.sh
ADD ./startup.sh /startup.sh

RUN apk add wget unzip jq

WORKDIR /server

EXPOSE $PORT

CMD [ "/startup.sh" ]
