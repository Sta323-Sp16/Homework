Sys.setenv(HADOOP_CONF="/data/hadoop/etc/hadoop")
Sys.setenv(YARN_CONF="/data/hadoop/etc/hadoop")
Sys.setenv(SPARK_HOME="/data/hadoop/spark/")
Sys.setenv(JAVA_HOME="/usr/lib/jvm/java-1.7.0-openjdk-1.7.0.99-2.6.5.0.el7_2.x86_64/")

.libPaths(c(.libPaths(), file.path(Sys.getenv("SPARK_HOME"), "R/lib")))
library(SparkR)

## Starting

sc = sparkR.init()
sqlContext = sparkRSQL.init(sc)



## Stopping

sparkR.stop() # Stop sparkR
