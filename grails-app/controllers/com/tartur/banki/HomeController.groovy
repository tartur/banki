package com.tartur.banki

class HomeController {

    def index() { 
		render "This page require a user to be logged in"
	}
	
	def admin(){
		render "This page requires an admin user"
	}
}
