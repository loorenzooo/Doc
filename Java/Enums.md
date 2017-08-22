### Definition enum
```java
public enum PeriodEnum {
	WEEK("Hebdomadaire", "H"),
	MONTH("Mensuel", "M");
	
	private String label;
	
	private String code;
	
	private PeriodEnum(String label, String code){
		this.label = label;
		this.code = code;
	}

	/**
	 * @return the label
	 */
	public String getLabel() {
		return label;
	}

	/**
	 * @return the code
	 */
	public String getCode() {
		return code;
	}

}
```

### Enum en fonction d'un String representant sa valeur (renvoyée par toString() ou name()) : WEEK ou MONTH
```java
PeriodEnum period = PeriodEnum.valueOf(periodSel);
```

### Exemple avec lookup en fonction d'un code
```java
package fr.ibp.cice.birt.viewer.dtos;

import java.util.HashMap;
import java.util.Map;

public enum TypeSegmentEnum {
	PART("1"),
	PRO("2"),
	ENT("3");
	
	private final String code;
	
    // Reverse-lookup map for getting a day from an abbreviation
    private static final Map<String, TypeSegmentEnum> lookup = new HashMap<String, TypeSegmentEnum>();
	
    static {
        for (TypeSegmentEnum s : TypeSegmentEnum.values()) {
            lookup.put(s.getCode(), s);
        }
    }
    
	private TypeSegmentEnum(String code){
		this.code = code;
	}

	/**
	 * @return the code
	 */
	public String getCode() {
		return code;
	}
	
    public static TypeSegmentEnum get(String code) {
        return lookup.get(code);
    }

}
```


### Comparaison sur chaine de caratère
```java
if (typeRapport.equals(ReportTypeEnum.SYNTHESIS_GP.name()))
```

### Comparaison sur type enum
```java
if (typeRapport.equals(ReportTypeEnum.SYNTHESIS_GP))
```

### Utilisation possible dans un switch
```java
public enum Day {
    SUNDAY, MONDAY, TUESDAY, WEDNESDAY,
    THURSDAY, FRIDAY, SATURDAY 
}

        switch (day) {
            case MONDAY:
                System.out.println("Mondays are bad.");
                break;
```
