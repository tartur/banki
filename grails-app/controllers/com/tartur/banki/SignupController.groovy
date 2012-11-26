package com.tartur.banki

import org.apache.shiro.SecurityUtils
import org.apache.shiro.authc.UsernamePasswordToken
import org.apache.shiro.crypto.hash.Sha512Hash

class SignupController {

	def index() {
		[user: new User()]
	}


	def register() {
		// Check to see if the username already exists
		def user = User.findByUsername(params.username)
		if (user) {
			flash.message = "User already exists with the username '${params.username}'"
			redirect(action:'index')
		} else {
			// User doesn't exist with username. Let's create one
			// Make sure the passwords match
			if (params.password != params.password2) {
				flash.message = "Passwords do not match"
				redirect(action:'index')
			} else {
				// Passwords match. Let's attempt to save the user
				// Create user
				user = new User(
						username: params.username,
						passwordHash: new Sha512Hash(params.password).toHex()
						)
				if (user.save()) {
					// Add USER role to new user
					def userRole =  Role.findByName('User')
					user.addToRoles(userRole)
					user.save()

					// Login user
					def authToken = new UsernamePasswordToken(user.username, params.password)
					SecurityUtils.subject.login(authToken)

					redirect(controller: 'home', action: 'index')
				} else {
					redirect(controller: 'auth', action: 'login')
				}
			}
		}
	}
}
