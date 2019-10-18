from centos:6

COPY docker-entrypoint.sh /

RUN yum install epel-release -y; \
yum install salt-minion vim -y

RUN chmod +x \
	/docker-entrypoint.sh

CMD /docker-entrypoint.sh
