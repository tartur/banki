package com.tartur.banki

class User {
    String username
    String passwordHash
	String emailAddress
    
    static hasMany = [ roles: Role, permissions: String, accounts: Account ]

    static constraints = {
        username(nullable: false, blank: false, unique: true)
		emailAddress(blank:false, email: true, unique: true)
    }
}
