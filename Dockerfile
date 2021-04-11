FROM rasa/rasa:latest-full



WORKDIR /app

COPY . /app
COPY ./data /app/data

#RUN rasa train
#RUN pip3 install rasa-x --extra-index-url https://pypi.rasa.com/simple

VOLUME /app
VOLUME /app/data
VOLUME /app/data/models


CMD ["run","-m","/app/models","--enable-api","cors","*","--debug"]



