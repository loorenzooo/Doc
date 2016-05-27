Declare and init list in one line :
-----------------------------------
ArrayList<String> places = new ArrayList<String>(
    Arrays.asList("Buenos Aires", "Córdoba", "La Plata"));

Extract list of ids from list of objects :
------------------------------------------
List<String> ids = (List<String>) CollectionUtils.collect(rejets, new BeanToPropertyValueTransformer("toto"));

Collection to comma delimited String :
--------------------------------------
org.springFramework.StringUtils.collectionToCommaDelimitedString

Arrays instanciate and init in one line :
-----------------------------------------
int[] array = new int[] {1, 1, 2, 3, 5, 8};

Iterate throug list :
---------------------
for (ElementType element : elementsList) {
	// do your stuff
}

Convert list to array :
-----------------------
String [] stockArr = (String[]) stock_list.toArray(new String[0]);
