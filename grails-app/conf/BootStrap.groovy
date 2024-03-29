import org.apache.shiro.crypto.hash.Sha512Hash

import com.tartur.banki.Role
import com.tartur.banki.User

class BootStrap {

    def init = { servletContext ->
		def adminRole = new Role(name: "Administrator")
		adminRole.addToPermissions("*:*")
		adminRole.save()
	   
		def userRole = new Role(name:"User")
		userRole.addToPermissions("Home:index")
		userRole.addToPermissions("UserAccount:*")
		userRole.save()
	   
		def admin = new User(username: "Admin", passwordHash: new Sha512Hash("password").toHex(), emailAddress: "ad@gmail.com")
		admin.addToRoles(adminRole)
		admin.save()
		
		def tartur = new User(username: "tartur", passwordHash: new Sha512Hash("290180").toHex(), emailAddress: "tartur@gmail.com")
		tartur.addToRoles(userRole)
		tartur.save()
		
		def randouch = new User(username: "randouch", passwordHash: new Sha512Hash("290180").toHex(), emailAddress: "randouch@gmail.com")
		randouch.addToRoles(userRole)
		randouch.save()
    }
    def destroy = {
    }
}
