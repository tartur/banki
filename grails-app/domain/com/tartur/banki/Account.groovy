package com.tartur.banki

import com.sun.java.util.jar.pack.Package.Class.Member;

class Account {
	String name
	Team team = new Team()
	
	static hasOne = [team: Team]
	static hasMany = [ operations: Operation]

	static belongsTo = [owner: User]

	static mapping = {
		operations cascade: 'all-delete-orphan'
	}

	static constraints = {
		name(blank:false)
		owner(blank:false)
	}

	def addMember(User u, MemberRole role) {
		team.members[u] = role
	}
}
