package com.tartur.banki

class NakamaLink {
	User origin
	User target
	
	static constraints = {
		origin(nullable:false)
		target(nullable:false)
	}
}
