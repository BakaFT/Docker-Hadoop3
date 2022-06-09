FROM bakaft/hadoop:base

RUN mkdir /home/hadoop /home/hadoop/tmp /home/hadoop/hdfs_name /home/hadoop/hdfs_data && \
    mkdir /usr/local/hadoop/logs

ADD ./core-site.xml $HADOOP_HOME/etc/hadoop/
ADD ./hdfs-site.xml $HADOOP_HOME/etc/hadoop/
ADD ./mapred-site.xml $HADOOP_HOME/etc/hadoop/
ADD ./yarn-site.xml $HADOOP_HOME/etc/hadoop/
ADD ./workers $HADOOP_HOME/etc/hadoop/


