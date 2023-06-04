FROM debian:latest
RUN apt-get update -y \
    && apt-get upgrade -y \
    && apt-get install -y git python3 python3-pip
RUN git clone https://github.com/sherlock-project/sherlock.git
WORKDIR /sherlock
RUN python3 -m pip install -r requirements.txt
ENV sherlock="python3 /sherlock/sherlock"
ENTRYPOINT ["python3", "/sherlock/sherlock"]