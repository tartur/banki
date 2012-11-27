package com.tartur.banki

class User {
    String username
    String passwordHash
	String emailAddress
	List<Account> accounts = []
    static hasMany = [ roles: Role, permissions: String, accounts: Account ]

	static mapping = {
		accounts cascade: "all-delete-orphan"
	}
	
    static constraints = {
        username(nullable: false, blank: false, unique: true)
		emailAddress(blank:false, email: true, unique: true)
    }
}
