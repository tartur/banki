package com.tartur.banki

class Operation {

	String label
	double amount
	Date eventDate
	
	static belongsTo = Account
	
    static constraints = {
    }
}
