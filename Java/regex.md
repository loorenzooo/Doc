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