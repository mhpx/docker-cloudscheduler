# Dockerfile for CloudScheduler 
FROM centos:latest
MAINTAINER Michael Paterson <mhp@uvic.ca>

RUN yum update -y yum && yum -y update
RUN yum install -y gcc \
                   python-devel \ 
                   python-setuptools
RUN easy_install pip
RUN pip install cloud-scheduler python-novaclient azure
RUN mkdir /etc/cloudscheduler
RUN cp /usr/share/cloud-scheduler/cloud_scheduler.conf /etc/cloudscheduler/
RUN cp /usr/share/cloud-scheduler/default.yaml /etc/cloudscheduler/
RUN touch /etc/cloudscheduler/cloud_resources.conf

ENTRYPOINT ["bash"]

