FROM rasa/rasa:latest-full

ENV BOT_ENV=production
COPY . /var/www
WORKDIR /var/www

USER ${CURRENT_UID}
RUN pip3 install rasa
RUN rasa train

#ENTRYPOINT [ "rasa", "run", "-p", "8080", "--enable-api", "--cors", "*", "--debug" ]


ENTRYPOINT [ "rasa", "run", "-vv", "-–enable-api","--cors","*", "–endpoints", "endpoints.yml", "–credentials", "credentials.yml", "-p", "8080"]
