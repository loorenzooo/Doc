# Anonymous class implementing interface Condition
## Interface to implement
```java
 public interface Condition<T> {
2 boolean test(T t);
3 } 
```
## Pass anonymous class in parameter
```java
persons = getPersonsByCondition(persons, new
Condition<Person>(){
 @Override
 public boolean test(Person person) {
 return person.getAge() < 20;
 }
 });
```
