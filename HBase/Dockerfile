FROM bakaft/hadoop:base

# Install HBase
RUN wget https://dlcdn.apache.org/hbase/stable/hbase-2.4.12-bin.tar.gz --no-check-certificate && \
    tar -xzvf hbase-2.4.12-bin.tar.gz && \
    mv hbase-2.4.12 /usr/local/hbase 

ENV HBASE_HOME=/usr/local/hbase 
ADD ./hbase-env.sh $HBASE_HOME/conf/
ADD ./regionservers $HBASE_HOME/conf/
ADD ./backup-masters $HBASE_HOME/conf/
ADD ./hbase-site.xml $HBASE_HOME/conf/
