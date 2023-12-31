FROM python:alpine3.18

ENV PORT=7240
ENV AUTO_UPDATE=True
ENV CONFIG_AUTO_UPDATE=True
RUN mkdir /server
RUN mkdir /server/src
RUN mkdir /server/releases
RUN mkdir /server/_SC4MP

ADD ./serverconfig.sh /serverconfig.sh
ADD ./startup.sh /startup.sh
ADD ./update.sh /update.sh


RUN apk add wget unzip jq

WORKDIR /server

EXPOSE $PORT

CMD [ "/startup.sh" ]
