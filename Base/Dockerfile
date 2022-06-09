FROM centos:7
MAINTAINER BakaFT

WORKDIR /root


# Install Openssh-server and client
RUN yum install -y openssh-server sudo wget which&& \
    sed -i 's/UsePAM yes/UsePAM no/g' /etc/ssh/sshd_config &&\
    ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key && \
    ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key && \
    mkdir /var/run/sshd && \ 
    yum  install -y openssh-clients 
    

RUN echo "root:root" | chpasswd
RUN echo "root ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]


# Install Oracle JDK
RUN wget https://github.com/frekele/oracle-java/releases/download/8u212-b10/jdk-8u212-linux-x64.tar.gz && \
    tar -xzvf jdk-8u212-linux-x64.tar.gz && \
    mv jdk1.8.0_212 /usr/local/jdk1.8 


# Install hadoop
RUN wget http://mirror.nus.edu.sg/apache/hadoop/common/stable/hadoop-3.3.1.tar.gz && \ 
    tar -xzvf hadoop-3.3.1.tar.gz && \  
    mv hadoop-3.3.1 /usr/local/hadoop && \ 
    rm hadoop-3.3.1.tar.gz 

# Set environment variable
ENV JAVA_HOME /usr/local/jdk1.8
ENV PATH $JAVA_HOME/bin:$PATH
ENV HADOOP_HOME=/usr/local/hadoop 
ENV PATH=$PATH:/usr/local/hadoop/bin:/usr/local/hadoop/sbin 


# Creat and trust public keys
RUN ssh-keygen -t rsa -f ~/.ssh/id_rsa -P '' && \
    cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys && \
    chmod 0600 ~/.ssh/authorized_keys


ADD ./hadoop-env.sh $HADOOP_HOME/etc/hadoop/
