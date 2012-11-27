package com.tartur.banki

import org.apache.shiro.SecurityUtils;

class AccountService {

    def createNewAccount(Account account) {
		User user = User.findByUsername(SecurityUtils.subject.principal)
		account.owner = user
		account.addMember(user, MemberRole.Admin)
		user.save()
    }
}
