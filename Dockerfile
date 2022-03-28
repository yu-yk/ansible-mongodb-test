FROM python:buster

# install ssh
RUN apt-get update
RUN apt -y install openssh-server
RUN mkdir /var/run/sshd

# config ssh root login
RUN echo 'root:root' | chpasswd
RUN sed -ri 's/^#?PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config

# install pymongo
RUN python3 -m pip install pymongo

EXPOSE 22

CMD [ "/sbin/init" ]
