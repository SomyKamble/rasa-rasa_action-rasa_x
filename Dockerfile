FROM rasa/rasa:latest-full

WORKDIR /app

COPY . /app

COPY ./data/ /app/data/

#COPY ./models/ /app/models/

COPY ./actions/ /app/actions/

RUN rasa train

#ENV BOT_ENV=production
#COPY . /var/www
#WORKDIR /var/www
#
#USER ${CURRENT_UID}
#RUN pip3 install rasa
#RUN rasa train
#
##ENTRYPOINT [ "rasa", "run", "-p", "8080", "--enable-api", "--cors", "*", "--debug" ]
#
#
#ENTRYPOINT [ "rasa", "run", "-vv", "-–enable-api","--cors","*", "–endpoints", "endpoints.yml", "–credentials", "credentials.yml", "-p", "8080"]
