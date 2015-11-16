# Dockerfile for CloudScheduler 
FROM centos:6
MAINTAINER Michael Paterson <mhp@uvic.ca>

RUN yum update -y yum && yum -y update
RUN yum install -y gcc \
                   python-devel \ 
                   python-setuptools
RUN easy_install pip
RUN pip install cloud-scheduler python-novaclient

ENTRYPOINT ["bash"]

