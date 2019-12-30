# Creating a new spark context
spark.driver.allowMultipleContexts true
new org.apache.spark.api.java.JavaSparkContext(sparkConfiguration)
org.apache.spark.SparkException: In Databricks, developers should utilize the shared SparkContext instead of creating one using the constructor. In Scala and Python notebooks, the shared context can be accessed as sc. When running a job, you can access the shared context by calling SparkContext.getOrCreate(). The other SparkContext was created at:

# Reusing existing spark context
org.apache.spark.api.java.JavaSparkContext.fromSparkContext(org.apache.spark.SparkContext.getOrCreate(sparkConfiguration)

java.lang.IllegalStateException: Only one StreamingContext may be started in this JVM. Currently running StreamingContext was started

https://docs.databricks.com/spark/latest/structured-streaming/production.html
https://spark.apache.org/docs/latest/job-scheduling.html#scheduling-within-an-application
