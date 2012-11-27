package com.tartur.banki


class Team {
	Map<User,MemberRole> members = new HashMap<>()
	Account account

	static mapping = { members cascade: "all-delete-orphan" }
}
