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

# Get certificate using openssl
echo quit | openssl s_client -showcerts -servername tal-qa300.talend.lan -connect tal-qa300.talend.lan:9871 > tal-qa300.pem
echo quit | openssl s_client -showcerts -servername tal-qa300.talend.lan -connect tal-qa300.talend.lan:9871 > tal-qa300.pem

# Import trusted certificate in truststore
sudo keytool -import -trustcacerts -keystore "$JAVA_HOME/jre/lib/security/cacerts" -noprompt -storepass changeit -alias tal-qa300.talend.lan -file talqa300.crt
sudo keytool -import -trustcacerts -keystore "$JAVA_HOME/jre/lib/security/cacerts" -noprompt -storepass changeit -alias old-bench-01 -file old-bench-01.pem

keytool -import -trustcacerts -keystore $JAVA_HOME/jre/lib/security/cacerts -storepass changeit -alias Root -import -file Trustedcaroot.txt
/home/lbourgeois/clusters/talqa300.crt
ROv7PbRuQpB4o3KkyY0FUPfn8NAClUCraPF0APHawb8

keytool -import -file tal-qa301.pem -alias talqa301 -keystore myTrustStore


java -jar BenchmarkFetcher-0.0.1-SNAPSHOT.jar --jh=https://old-bench-01:19890 --rm=https://old-bench-01:8090--sh=http://tbd-bench-02:18088 --job-id-prefix=application_1574955596933_ --job-id-num-min=0028 --job-id-num-max=0029 > output.tsvUse
