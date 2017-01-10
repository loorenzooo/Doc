# Basic functions
```scala
scala> def multiplier(x: Int, y: Int): Int = { x * y }
multiplier: (x: Int, y: Int)Int
scala> multiplier(6, 7)
res0: Int = 42
```
# Input-less functions
```scala
scala> def hi(): String = "hi"
hi: ()String
```

# Invoke functions with expression block
```scala
scala> def formatEuro(amt: Double) = f"€$amt%.2f"
formatEuro: (amt: Double)String
scala> formatEuro(3.4645)
res4: String = €3.46
scala> formatEuro { val rate = 1.32; 0.235 + 0.7123 + rate * 5.32 }
res5: String = €7.97
```

# Function with vararg
```scala
scala> def sum(items: Int*): Int = {
|
var total = 0
|
for (i <- items) total += i
|
total
| }
sum: (items: Int*)Int
scala> sum(10, 20, 30)
res11: Int = 60
scala> sum()
res12: Int = 0
```

# Type parameterized function
```scala
scala> def identity[A](a: A): A = a
identity: [A](a: A)A
scala> val s: String = identity[String]("Hello")
s: String = Hello
scala> val d: Double = identity[Double](2.717)
d: Double = 2.717
```
