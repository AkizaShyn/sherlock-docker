FROM debian:11.7-slim
RUN apt-get update -y \
    && apt-get upgrade -y \
    && apt-get install -y git python3 python3-pip
RUN git clone https://github.com/sherlock-project/sherlock.git
WORKDIR /sherlock
RUN python3 -m pip install -r requirements.txt
ENTRYPOINT ["python3", "/sherlock/sherlock"]