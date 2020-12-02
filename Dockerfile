FROM centos:centos6

COPY root /
RUN rm -f /etc/yum.repos.d/CentOS*.repo && yum clean all && yum -y upgrade
