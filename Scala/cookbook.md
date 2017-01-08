# Compare numbers
```scala
scala> val x = 10; val y = 20
x: Int = 10
y: Int = 20
scala> val max = x > y match {
|
case true => x
|
case false => y
| }
max: Int = 20
```
