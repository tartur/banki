package com.tartur.banki

import org.apache.shiro.SecurityUtils;

class HomeController {

	def index() {
		if(SecurityUtils.subject.hasRole("Administrator"))
			redirect(action:"admin")

		def user = User.findByUsername(SecurityUtils.subject.principal)
		println(user.id+" "+user.properties)
		[accounts: user.accounts]
	}

	def admin(){
	}
}
