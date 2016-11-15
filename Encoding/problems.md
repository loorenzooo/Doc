- En java ã© affiché au lieu de é
C'est un caractère UTF-8 affiché dans une page ISO-8859-1
```java
String s1 = "l'Ã©pargne";
String s2 = new String(s1.getBytes("iso-8859-1"), "utf8");
```
