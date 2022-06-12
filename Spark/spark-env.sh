export JAVA_HOME=/usr/local/jdk1.8
# For HA with local-filesystem-recovery
#export SPARK_DAEMON_JAVA_OPTS="-Dspark.deploy.recoveryMode=FILESYSTEM -Dspark.deploy.recoveryDirectory=/tmp"

# For HA with Zookeeper
# export SPARK_DAEMON_JAVA_OPTS="-Dspark.deploy.recoveryMode=ZOOKEEPER -Dspark.deploy.zookeeper.url=master:2181 -Dspark.deploy.zookeeper.dir=/spark"