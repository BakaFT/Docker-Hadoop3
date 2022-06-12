FROM bakaft/hadoop:base

# Install Spark
RUN wget https://dlcdn.apache.org/spark/spark-3.2.1/spark-3.2.1-bin-hadoop3.2.tgz --no-check-certificate && \
    tar xzvf spark-3.2.1-bin-hadoop3.2.tgz && \
    mv spark-3.2.1-bin-hadoop3.2 /usr/local/spark && \
    rm spark-3.2.1-bin-hadoop3.2.tgz 
# Install Zookeeper
RUN wget https://dlcdn.apache.org/zookeeper/zookeeper-3.8.0/apache-zookeeper-3.8.0-bin.tar.gz --no-check-certificate && \
    tar xzvf apache-zookeeper-3.8.0-bin.tar.gz && \
    mv apache-zookeeper-3.8.0-bin /usr/local/zookeeper && \
    rm apache-zookeeper-3.8.0-bin.tar.gz && \
    mkdir /var/lib/zookeeper

ENV SPARK_HOME=/usr/local/spark
ENV ZOOKEEPER_HOME=/usr/local/zookeeper

# Needed when running a cluster, but do not include when running a single instance
ADD ./workers $SPARK_HOME/conf

ADD ./spark-env.sh $SPARK_HOME/conf
ADD ./zoo.cfg $ZOOKEEPER_HOME/conf