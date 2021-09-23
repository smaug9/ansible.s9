FROM ubuntu:20.04

RUN apt-get update; \
    apt-get upgrade -y; \
    apt-get install -y apt-utils ; \
    apt-get install -y curl python3 python3-pip; \
    pip3 install ansible ; \
    # python --version ; \
    pip3 --version ; \
    ansible --version 

