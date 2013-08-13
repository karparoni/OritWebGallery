package home.karparoni.web

class LoginTagLib {
	def loginControl = {
		if(request.getSession(false) && session.user){
		 // out << "Hello ${session.user.login} "
		  out << """<a href="${createLink(controller:'user',action:'logout')}">${message(code: 'custom.navigation.Logout', default: 'Logout')}</a> """
		  //out << """[${link(action:"logout",controller:"user"){"Logout"}}]""" 
		} else {
		out << """<a href="${createLink(controller:'user',action:'login')}">${message(code: 'custom.navigation.Login', default: 'Login')}</a> """
		  //out << """[${link(action:"login", controller:"user"){"Login"}}]"""       
		}
	  }
}
