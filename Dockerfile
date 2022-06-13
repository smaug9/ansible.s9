FROM ubuntu:21.10

RUN apt-get update; \
    apt-get upgrade -y; \
    apt-get install -y curl python3 python3-pip git ; \
    pip3 install omsdk ; \
    pip3 install ansible ; \
    ansible-galaxy collection install dellemc.openmanage ; \
    pip3 install --upgrade git+https://github.com/vmware/vsphere-automation-sdk-python.git ; \
    ansible-galaxy collection install chocolatey.chocolatey ; \
    ansible-galaxy collection install community.windows ; \
    ansible-galaxy collection install community.vmware 



