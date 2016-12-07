#Ajout dépendances MAVEN :

		<dependency>
			<groupId>org.mockito</groupId>
			<artifactId>mockito-all</artifactId>
			<version>1.10.8</version>
			<scope>test</scope>
		</dependency>

- State Testing : Test E/S directs : worker classes
- Interaction Testing : Test E/S indirects (Collaborateurs) : manager classes

Avant chaque execution de méthode de test une instance de la classse de test est créée
@Before et @After

#Assertions
assertEquals
assertTrue(myFerrari instanceof Car);
@Test(expected = ExceptionClass.class)


#Passage de paramètres
@RunWith(JUnitParamsRunner.class)
public class MoneyParameterizedTest {

private static final Object[] getMoney() {
return new Object[] {
new Object[] {10, "USD"},
new Object[] {20, "EUR"}
};
}

@Test
@Parameters(method = "getMoney") // Appel de la méthode en boucle
public void constructorShouldSetAmountAndCurrency(int amount, String currency) {
Money money = new Money(amount, currency);
assertEquals(amount, money.getAmount());
assertEquals(currency, money.getCurrency());
}
}

#Types of test doubles
-Dummy (Coquille vide : Car myFerrari = Mockito.mock(Car.class);)

-Stub (Ajout d'un comportement : 
				when(myFerrari.needsFuel()).thenReturn(true);
				when(myFerrari.needsFuel()).thenThrow(new RuntimeException());
				doThrow(new IllegalArgumentException("bad argument!")).when(someObject).voidMethod();

-Spy/Mock (Vérification des appels) :
				verify(myFerrari).driveTo("Sweet home Alabama");
				verify(myFerrari).needsFuel();
				verify(clientA, never()).receive(message); // To verify that somathing has not occured
				verify(clientA, times(3)).receive(message); // To verify number of calls
				
#Catch-Exception library to avoid try catch in test code

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

#Matchers for generic stubbing
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
