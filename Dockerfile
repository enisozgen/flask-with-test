FROM ubuntu:xenial-20201014

RUN apt-get update && apt-get install python3-dev python3-pip -y

RUN mkdir /app
WORKDIR /app
COPY requirements.txt /app/
RUN pip3 install --upgrade pip
RUN pip3 install -r /app/requirements.txt


COPY api.py test_api.py /app/
COPY test.sh /app/
RUN chmod +x /app/test.sh

EXPOSE 5000
ENTRYPOINT ["python3","api.py"]
