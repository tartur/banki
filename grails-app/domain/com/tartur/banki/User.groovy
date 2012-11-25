package com.tartur.banki

class User {
	String firstName
	String lastName
	String emailAddress
	String password
	
    static constraints = {
		emailAddress blank: false, email: true
		password blank:false 
    }
}
