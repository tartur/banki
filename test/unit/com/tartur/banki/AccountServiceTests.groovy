package com.tartur.banki



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.services.ServiceUnitTestMixin} for usage instructions
 */
@TestFor(AccountService)
class AccountServiceTests {
	AccountService svc
	
	void whenCreateNewAccountAssociateItToTheCurrentUser() {
		Account a = new Account(name:"Mock")
		svc.createNewAccount(a)
		def actual = Account.findByName("Mock")
		assertNotNull actual
		assertEquals("Mock", actual.name)
		assertEquals("Mock", actual.owner)
	}
}
