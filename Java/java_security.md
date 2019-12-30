A trust store is used to authenticate peers.
'cacerts' is a truststore.

A keystore is used to authenticate yourself.
A keystore is to provide credentials

default password : changeit

JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/

# List certificates in truststore
keytool -list -keystore "$JAVA_HOME/jre/lib/security/cacerts"
keytool -list -trustcacerts

# Export certificate from keystore
keytool -export -alias tal-qa300.talend.lan -file talqa300.crt -keystore tal-qa300.jks

# Import trusted certificate in truststore
keytool -import -trustcacerts -keystore "$JAVA_HOME/jre/lib/security/cacerts" -noprompt -storepass changeit -alias tal-qa300.talend.lan -file talqa300.crt




keytool -import -trustcacerts -keystore $JAVA_HOME/jre/lib/security/cacerts -storepass changeit -alias Root -import -file Trustedcaroot.txt
/home/lbourgeois/clusters/talqa300.crt
ROv7PbRuQpB4o3KkyY0FUPfn8NAClUCraPF0APHawb8




keytool -import -file tal-qa301.pem -alias talqa301 -keystore myTrustStore


# Get certificate using openssl

echo quit | openssl s_client -showcerts -servername tal-qa300.talend.lan -connect tal-qa300.talend.lan:9871 > tal-qa300.pem
echo quit | openssl s_client -showcerts -servername tal-qa301.talend.lan -connect tal-qa301.talend.lan:9865 > tal-qa301.pem
echo quit | openssl s_client -showcerts -servername tal-qa302.talend.lan -connect tal-qa302.talend.lan:9865 > tal-qa302.pem
