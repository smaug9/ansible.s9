FROM ubuntu:20.04

RUN apt-get update; \
    apt-get upgrade -y; \
    apt-get install -y curl python3 python3-pip; \
    # curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py; \
    # python get-pip.py; \
    # pip3 --version; \
    # pip3 install pip --upgrade; \
    pip install ansible ; \
    python --version ; \
    pip3 --version ; \
    ansible --version ; \

