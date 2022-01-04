```java
    /**
     * Extract major.minor part from connector full version (ex : hadoop3-1.1.4)
     *
     * @param connectorVersion
     * @return major.minor (ex : 1.1)
     */
    public static String extractMajorMinorFromConnectorVersion(String connectorVersion) {

        Matcher matcher = Pattern.compile("(\\d+\\.\\d+)\\.\\d+").matcher(connectorVersion);
        matcher.find();
        return(matcher.group(1));
    }
```

# Named groups

```java
        Matcher matcher = Pattern.compile("(?<mainds>\\w+)(\\.)(?<maincol>\\w+)\\s*(?<operator>[<>=])\\s*(?<lookupds>\\w+)(\\.)(?<lookupcol>\\w+)").matcher(customJoinExpression);
        if (!matcher.matches()){
            // Bad input, may be checked before
        }

        String mainds = matcher.group("mainds");
        String lookupds = matcher.group("lookupds");
        String maincol = matcher.group("maincol");
        String lookupcol = matcher.group("lookupcol");
        String operator = matcher.group("operator");

```
