# Anonymous class implementing interface Condition
## Method using interface as parameter type
```java
private List<Person> getPersonsByCondition(List<Person> persons, Condition<Person> condition){
 List<Person> result = new ArrayList<>();
 for (Person person : persons) {
  if (condition.test(person)) {
   result.add(person);
  }
 }
 return result;
}
```
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

# Lambda expression
```java
persons = getPersonsByCondition(
2 persons,
3 person -> person.getAge() < 20); 
```
