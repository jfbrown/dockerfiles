FROM python:2.7.8

RUN pip install -U nltk

RUN python -m nltk.downloader all
ENTRYPOINT /usr/local/bin/python

WORKDIR /src
