FROM python:3.5
MAINTAINER https://github.com/sthysel/conspeech

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y \
        libopenblas-dev \
        libblas-dev \
        liblapack-dev \
        gfortran \
        && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN env --unset=DEBIAN_FRONTEND

RUN pip install --upgrade pip

# this layer takes a while to build so best to do it lower down
# so it should be invalidated less frequently
COPY requirements.txt /
RUN pip install -r /requirements.txt

RUN mkdir /data \
        && curl -SL https://www.cs.cornell.edu/home/llee/data/convote/convote_v1.1.tar.gz \
        | tar -xzC /data/

COPY ./app /app
WORKDIR /app

CMD ["python", "demo.py", "RY", "0.25"]

