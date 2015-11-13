
FROM centos:6
MAINTAINER Michael Paterson <mhp@uvic.ca>

RUN yum update -y yum && yum -y update

ENTRYPOINT ["bash"]

