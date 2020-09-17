# Declare and init list in one line :

---

ArrayList<String> places = new ArrayList<String>(Arrays.asList("Buenos Aires", "Córdoba", "La Plata"));

List<String> list = Arrays.asList(new String[]{"foo", "bar"});

# Extract list of ids from list of objects :

---

List<String> ids = (List<String>) CollectionUtils.collect(rejets, new BeanToPropertyValueTransformer("toto"));

# Collection to comma delimited String :

---

org.springFramework.StringUtils.collectionToCommaDelimitedString

# Arrays instanciate and init in one line :

---

int[] array = new int[] {1, 1, 2, 3, 5, 8};

# Iterate throug list :

---

for (ElementType element : elementsList) {
// do your stuff
}

# Convert list to array :

---

String [] stockArr = (String[]) stock_list.toArray(new String[0]);

List myList = Arrays.asList(stockArr);
myList.add(....);
myList.toArray(new String[0]);

# Stream API example

## Find first occurence

Customer james = customers.stream()
.filter(customer -> "James".equals(customer.getName()))
.findAny()
.orElse(null);

## Check presence

return ((List<Map<String, Object>>) param.getValue()).stream()
.anyMatch(line -> paramValue.equals(line.toString()));

## Display every element

((List<Map<String, Object>>) param.getValue()).stream()
.forEach(l -> System.out.println("COMP:"+l.toString()));
