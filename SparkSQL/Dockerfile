FROM bakaft/hadoop:cluster

# Overwrite hadoop cluster config
ADD ./core-site.xml $HADOOP_HOME/etc/hadoop/
ADD ./hdfs-site.xml $HADOOP_HOME/etc/hadoop/
ADD ./mapred-site.xml $HADOOP_HOME/etc/hadoop/
ADD ./yarn-site.xml $HADOOP_HOME/etc/hadoop/
ADD ./workers $HADOOP_HOME/etc/hadoop/

# Download Hive for it's schematoll
RUN wget https://dlcdn.apache.org/hive/hive-3.1.3/apache-hive-3.1.3-bin.tar.gz --no-check-certificate && \
    tar xzvf apache-hive-3.1.3-bin.tar.gz && \
    mv apache-hive-3.1.3-bin /usr/local/hive 
ENV HIVE_HOME=/usr/local/hive
ADD ./hive-site.xml $HIVE_HOME/conf

# Install Spark
RUN wget https://dlcdn.apache.org/spark/spark-3.2.1/spark-3.2.1-bin-hadoop3.2.tgz --no-check-certificate && \
    tar xzvf spark-3.2.1-bin-hadoop3.2.tgz && \
    mv spark-3.2.1-bin-hadoop3.2 /usr/local/spark && \
    rm spark-3.2.1-bin-hadoop3.2.tgz 

# Config for Spark
ENV SPARK_HOME=/usr/local/spark
ADD ./workers $SPARK_HOME/conf
ADD ./spark-env.sh $SPARK_HOME/conf

# Config for built-in Hive
ADD ./hive-site.xml $SPARK_HOME/conf

# JDBC connector
RUN wget https://repo1.maven.org/maven2/mysql/mysql-connector-java/8.0.29/mysql-connector-java-8.0.29.jar && \
    cp mysql-connector-java-8.0.29.jar $SPARK_HOME/jars
    cp mysql-connector-java-8.0.29.jar $HIVE_HOME/lib