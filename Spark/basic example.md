```java
import org.apache.spark.SparkConf
import org.apache.spark.SparkContext
import org.apache.spark.SparkContext._
val conf = new SparkConf().setMaster("local").setAppName("My App")
val sc = new SparkContext(conf)
val lines = sc.textFile("README.md") // Create an RDD called lines
val pythonLines = lines.filter(line => line.contains("Python"))
pythonLines.first()
```
# WordCount example
```java
// Create a Scala Spark Context.
val conf = new SparkConf().setAppName("wordCount")
val sc = new SparkContext(conf)
// Load our input data.
val input = sc.textFile(inputFile)
// Split it up into words.
val words = input.flatMap(line => line.split(" "))
// Transform into pairs and count.
// Save the word count back out to a text file, causing evaluation.
counts.saveAsTextFile(outputFile);
```
# Building
## Maven
```
mvn clean && mvn compile && mvn package
$SPARK_HOME/bin/spark-submit \
--class com.oreilly.learningsparkexamples.mini.java.WordCount \
./target/learning-spark-mini-example-0.0.1.jar \
./README.md ./wordcounts
```
## Sbt
```bash
sbt clean package
$SPARK_HOME/bin/spark-submit \
--class com.oreilly.learningsparkexamples.mini.scala.WordCount \
./target/...(as above) \
./README.md ./wordcounts
```
