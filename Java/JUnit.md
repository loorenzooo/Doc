# Maven dependencies

```xml
		<dependency>
			<groupId>org.mockito</groupId>
			<artifactId>mockito-all</artifactId>
			<version>1.10.8</version>
			<scope>test</scope>
		</dependency>
```

- State Testing : Test E/S directs : worker classes
- Interaction Testing : Test E/S indirects (Collaborateurs) : manager classes

Avant chaque execution de méthode de test une instance de la classse de test est créée
@Before et @After

# Asserts

```java
assertEquals
assertTrue(myFerrari instanceof Car);
@Test(expected = ExceptionClass.class)
```

# Parameters

```java
@RunWith(JUnitParamsRunner.class)
public class MoneyParameterizedTest {

private static final Object[] getMoney() {
	return new Object[] {
		new Object[] {10, "USD"},
		new Object[] {20, "EUR"}
	};
}

@Test
@Parameters(method = "getMoney") // Call getMoney to provide input params
public void constructorShouldSetAmountAndCurrency(int amount, String currency) {
	Money money = new Money(amount, currency);
	assertEquals(amount, money.getAmount());
	assertEquals(currency, money.getCurrency());
}
}
```

# Types of test doubles

- Dummy (Coquille vide : Car myFerrari = Mockito.mock(Car.class);)
- Stub (Ajout d'un comportement :

```java
				when(myFerrari.needsFuel()).thenReturn(true);
				when(myFerrari.needsFuel()).thenThrow(new RuntimeException());
				doThrow(new IllegalArgumentException("bad argument!")).when(someObject).voidMethod();
```

- Spy/Mock (Vérification des appels) :

```java
				verify(myFerrari).driveTo("Sweet home Alabama");
				verify(myFerrari).needsFuel();
				verify(clientA, never()).receive(message); // To verify that somathing has not occured
				verify(clientA, times(3)).receive(message); // To verify number of calls

```

# Catch-Exception library to avoid try catch in test code

```java
import static com.googlecode.catchexception.CatchException.*;
...
Phone phone = new Phone();
@Test
public void shouldThrowIAEForEmptyNumber() {
catchException(phone).setNumber(null);
--
}

@Test
public void shouldThrowExceptions() throws InvalidRequestException {
	Request request = createInvalidRequest();
	RequestProcessor requestProcessor = mock(RequestProcessor.class);
	RequestHandler sut = new RequestHandler(requestProcessor);
	catchException(sut).handle(request);
	assertTrue("Should have thrown exception of InvalidRequestException class",
	caughtException() instanceof InvalidRequestException);
	Mockito.verifyZeroInteractions(requestProcessor);
}
```

# Matchers for generic stubbing

```java
verify(userDAO, times(3)).getUser(anyInt());

Unitils21, Hamcrest22 and FEST Fluent Assertions23 usage for collections testing.

#Reading data from CSV File
import junitparams.FileParameters;
import junitparams.JUnitParamsRunner;
import junitparams.mappers.CsvWithHeaderMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import static org.junit.Assert.assertEquals;

@RunWith(JUnitParamsRunner.class)
public class ReadCSVJUnitParamsTest {

@Test
@FileParameters(value = "classpath:financial.csv",
mapper = CsvWithHeaderMapper.class)
public void shouldCalculateDiscount(double value, double discount) {
assertEquals(discount,DiscountCalculator.calculateDiscount(value), 0.0001);
}}
```

# Studio JUnit tests

https://jenkins-studio.datapwn.com/job/__TESTS__/job/studio-junit-74-jdk8
studio-full-master/build/talend.studio.junit.product/target/products/Talend-Studio-20210203_2342-V7.4.1SNAPSHOT.zip
https://github.com/Talend/studio-full-master/blob/maintenance/7.3/talend.ci.studio.build/junits/studio-junit-74-jdk8.groovy

## Command used in CI

```
sh "xvfb-run java -ea -Xms512m -Xmx1300m -Dfile.encoding=UTF-8 -XX:+UseG1GC -XX:MaxMetaspaceSize=1200m -XX:+HeapDumpOnOutOfMemoryError
-Dtalend.disable.internet=true
-Dtalend.license.branding=TP_ALL
-Dtalend.product.name='Talend Data Fabric'
-Dtalend.product.edition=''
-Dtest.package.prefix='org.talend.designer.common,org.talend.designer.bigdata,org.talend.designer.components.mrprovider,org.talend.designer.components.sparkprovider,org.talend.designer.mapreduce,org.talend.designer.routines.bigdata,org.talend.designer.spark,org.talend.designer.sparkjoblet,org.talend.designer.sparkmap,org.talend.designer.sparkstreamingjoblet,org.talend.hadoop.distribution,org.talend.repository.hadoopcluster,org.talend.repository.hdfs,org.talend.repository.maprdbprovider,org.talend.repository.nosql,org.talend.repository.spark'
-Dtest.plugin.prefix=org.talend
-Dtest.only.fragments=true
-Dtest.plugin.suffix=.test
-Dtest.class.filter=\*Test
-Dtalend.library.path=${env.WORKSPACE}/lib
-classpath ${studioPath}/plugins/org.eclipse.equinox.launcher_1.5.200.v20180922-1751.jar

org.eclipse.core.launcher.Main

-application org.eclipse.swtbot.eclipse.junit.headless.swtbottestapplication
-testpluginname test.all.test.suite
-testApplication org.talend.rcp.branding.generic.application
-clean --disableExternalModuleInstallDialog --disableLoginDialog --disableUpdateDialog -project TEST_NOLOGIN --deleteProjectIfExist -language java -login junit@talend.com -classname org.talend.test.GenericTestsJUnit4Suite formatter=org.apache.tools.ant.taskdefs.optional.junit.XMLJUnitResultFormatter,${env.WORKSPACE}/${studioPath}/studio-junit.xml -consoleLog"
```

- org.eclipse.swtbot.eclipse.junit.headless.swtbottestapplication is in org.eclipse.swtbot.eclipse.core

https://wiki.eclipse.org/SWTBot
http://download.eclipse.org/technology/swtbot/releases/latest/

java -ea -Xms512m -Xmx1300m -Dfile.encoding=UTF-8 -XX:+UseG1GC -XX:MaxMetaspaceSize=1200m -XX:+HeapDumpOnOutOfMemoryError -Dtalend.disable.internet=true
-Dtalend.license.branding=TP_ALL
-Dtalend.product.name='Talend Data Fabric'
-Dtalend.product.edition=''
-Dtest.package.prefix='org.talend.designer.common,org.talend.designer.bigdata,org.talend.designer.components.mrprovider,org.talend.designer.components.sparkprovider,org.talend.designer.mapreduce,org.talend.designer.routines.bigdata,org.talend.designer.spark,org.talend.designer.sparkjoblet,org.talend.designer.sparkmap,org.talend.designer.sparkstreamingjoblet,org.talend.hadoop.distribution,org.talend.repository.hadoopcluster,org.talend.repository.hdfs,org.talend.repository.maprdbprovider,org.talend.repository.nosql,org.talend.repository.spark'
-Dtest.plugin.prefix=org.talend
-Dtest.only.fragments=true
-Dtest.plugin.suffix=.test
-Dtest.class.filter=\*Test
-Dtalend.library.path=${env.WORKSPACE}/lib
-classpath ${studioPath}/plugins/org.eclipse.equinox.launcher_1.5.200.v20180922-1751.jar
org.eclipse.core.launcher.Main
-application org.eclipse.swtbot.eclipse.junit.headless.swtbottestapplication
-testpluginname test.all.test.suite
-testApplication org.talend.rcp.branding.generic.application
-clean --disableExternalModuleInstallDialog --disableLoginDialog --disableUpdateDialog -project TEST_NOLOGIN --deleteProjectIfExist -language java -login junit@talend.com -classname org.talend.test.GenericTestsJUnit4Suite formatter=org.apache.tools.ant.taskdefs.optional.junit.XMLJUnitResultFormatter,${env.WORKSPACE}/${studioPath}/studio-junit.xml -consoleLog
