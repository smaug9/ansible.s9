FROM ubuntu:21.10

ENV TZ=America/New_York

RUN ln -snf /usr/share/zoneinfo/$TZ && echo $TZ > /etc/timezone
RUN apt-get update; \
    apt-get install -y tzdata; \
    apt-get install -y curl python3 python3-pip git ; \
    apt-get upgrade -y; \
    pip3 install omsdk ; \
    pip3 install ansible ; \
    ansible-galaxy collection install dellemc.openmanage ; \
    pip3 install --upgrade git+https://github.com/vmware/vsphere-automation-sdk-python.git ; \
    ansible-galaxy collection install chocolatey.chocolatey ; \
    ansible-galaxy collection install community.windows ; \
    ansible-galaxy collection install community.vmware 



