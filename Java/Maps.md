# Initilize map statically
```java
public class Demo
{
    private static final Map<String, String> myMap;
    static
    {
        myMap = new HashMap<String, String>();
        myMap.put("a", "b");
        myMap.put("c", "d");
    }
}
```
