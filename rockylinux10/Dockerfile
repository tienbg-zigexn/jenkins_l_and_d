FROM rockylinux/rockylinux:10

RUN yum -y install openssh-server mariadb-client-utils python3-pip && \
    pip3 install --upgrade pip && \
    pip3 install cloudinary-cli

RUN useradd -m remote_user && \
    echo "tjen" | passwd remote_user --stdin && \
    mkdir /home/remote_user/.ssh && \
    chmod 700 /home/remote_user/.ssh
COPY remote-key.pub /home/remote_user/.ssh/authorized_keys
RUN chown remote_user:remote_user -R /home/remote_user/.ssh && \
    chmod 600 /home/remote_user/.ssh/authorized_keys

RUN ssh-keygen -A

CMD [ "/usr/sbin/sshd", "-D" ]
