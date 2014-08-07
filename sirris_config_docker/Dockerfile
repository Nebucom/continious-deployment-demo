# This Dockerfile is used to build an image containing basic stuff to be used as a Jenkins slave build node.

FROM ubuntu:trusty


RUN apt-get update
RUN apt-get install -y openssh-server sudo
RUN mkdir -p /var/run/sshd

#disable password authentification
RUN sed 's/UsePAM yes/UsePAM no/' -i /etc/ssh/sshd_config
RUN sed 's/#PermitRootLogin yes/PermitRootLogin yes/' -i /etc/ssh/sshd_config
RUN sed 's/#PermitEmptyPasswords no/PermitEmptyPasswords no/' -i /etc/ssh/sshd_config

RUN echo "    StrictHostKeyChecking no" >> /etc/ssh/ssh_config
RUN echo "    UserKnownHostsFile=/dev/null" >> /etc/ssh/ssh_config

#don t know why
RUN /usr/sbin/sshd


RUN apt-get -y install build-essential


RUN useradd -m -d /var/lib/jenkins jenkins
RUN echo 'root:1111' | chpasswd
RUN echo 'jenkins:1111' | chpasswd
RUN su - jenkins -c "mkdir -p /var/lib/jenkins/.ssh"
ADD id_rsa /var/lib/jenkins/.ssh/
ADD id_rsa.pub /var/lib/jenkins/.ssh/
ADD known_hosts /var/lib/jenkins/.ssh/
ADD authorized_keys /var/lib/jenkins/.ssh/
RUN chown jenkins:jenkins -R /var/lib/jenkins/.ssh
RUN chmod 0755 /var/lib/jenkins/.ssh && chmod 0644 /var/lib/jenkins/.ssh/*


RUN sed 's/Defaults *requiretty/#Defaults    requiretty/' -i /etc/sudoers
RUN echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers


RUN apt-get install -y --no-install-recommends openjdk-7-jdk


# Standard SSH port
EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]