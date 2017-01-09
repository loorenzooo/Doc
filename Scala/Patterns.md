# Pattern alternatives
``` scala
scala> val day = "MON"
day: String = MON
scala> val kind = day match {
|
case "MON" | "TUE" | "WED" | "THU" | "FRI" =>
|
"weekday"
|
case "SAT" | "SUN" =>
|
"weekend"
| }
kind: String = weekday
```

# Pattern guard
``` scala
scala> val response: String = null
response: String = null
scala> response match {
|
case s if s != null => println(s"Received '$s'")
|
case s => println("Error! Received a null response")
| }
Error! Received a null response
```

# Wildcard pattens
## With binding value
```scala
scala> val message = "Ok"
message: String = Ok
scala> val status = message match {
|
case "Ok" => 200
|
case other => {
|
println(s"Couldn't parse $other")
|
-1
|
}
| }
status: Int = 200
```

## Undescore wildcard
```scala
scala> val message = "Unauthorized"
message: String = Unauthorized`
scala> val status = message match {
|
case "Ok" => 200
|
case _ => {
|
println(s"Couldn't parse $message")
|
-1
|
}
| }
Couldn't parse Unauthorized
status: Int = -1
```
