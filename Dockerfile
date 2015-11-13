
FROM centos:6
MAINTAINER Michael Paterson <mhp@uvic.ca>

RUN yum update -y yum && yum -y update
RUN yum install -y python-setuptools \ 
                   gcc
RUN easy_install pip
RUN pip install cloud-scheduler python-novaclient

ENTRYPOINT ["bash"]

