package com.tartur.banki

class Account {

	String name

	static hasMany = [ operations: Operation]

	static belongsTo = [admin: User]

	static constraints = {
		name(blank:false)
		admin(blank:false)
	}
}
