FROM python:3.5

RUN mkdir /app

WORKDIR /app

ADD requirements.txt /app

RUN pip3 install -r requirements.txt

ADD . /app/

ENTRYPOINT ["python3"]

CMD ["block_chain_api.py"]
