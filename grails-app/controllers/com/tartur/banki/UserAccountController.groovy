package com.tartur.banki

import org.apache.shiro.SecurityUtils

class UserAccountController {
	AccountService accountService
	
    def create() { }
	
	def save() {
		def account = new Account(params)
		if (!accountService.createAccount(account)) {
			render(view: "create", model: [accountInstance: account])
			return
		}

		flash.message = message(code: 'default.created.message', args: [message(code: 'account.label', default: 'Account'), account.id])
		redirect(controller: "Home", action: "index")
	}
}
