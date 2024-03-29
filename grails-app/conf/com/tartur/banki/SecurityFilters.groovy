package com.tartur.banki

/**
 * Generated by the Shiro plugin. This filters class protects all URLs
 * via access control by convention.
 */
class SecurityFilters {
	def publicActions = [
		signup: ['index','register'],
		auth:['*']
	]
	
	private boolean findAction(controllerName, actionName){
		def c = publicActions[controllerName]
		return(c)?c.find{(it==actionName||it=='*')}!=null:false
	}
	
	
    def filters = {
        all(uri: "/**") {
            before = {
				//Check for public controller/actions
				def isPublic=findAction(controllerName,actionName)
				
				if(isPublic) return true
				
                // Ignore direct views (e.g. the default main index page).
                if (!controllerName) return true

                // Access control by convention.
                accessControl()
            }
        }
    }
}