package com.tartur.banki

import org.apache.shiro.SecurityUtils;

class UserAccountController {

    def create() { }
	
	def save() {
		def accountInstance = new Account(params)
		accountInstance.admin = User.findByUsername(SecurityUtils.subject.principal)
		if (!accountInstance.save(flush: true)) {
			render(view: "create", model: [accountInstance: accountInstance])
			return
		}

		flash.message = message(code: 'default.created.message', args: [message(code: 'account.label', default: 'Account'), accountInstance.id])
		redirect(controller: "Home", action: "index")
	}
}
