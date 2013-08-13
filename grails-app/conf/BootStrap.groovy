import home.karparoni.web.Album
import home.karparoni.web.Photo
import home.karparoni.web.User


class BootStrap {

    def init = { servletContext ->
		
		
		
		def album1 = new Album(caption: "cap-album1", description: "desc-album1" ).save(failOnError: true)
		def album2 = new Album(caption: "cap-album2", description: "desc-album2" ).save(failOnError: true)
		
		
	//	def url = this.class.getResource("/${userId}.jpg")
	//	if (url) {
	//		def image = new File(url.toURI()).readBytes()
	//		println "Creating With custom photo"
	//		user.profile.photo = image
	//	}
		
		new Photo(photo: new File("web-app/photos/1.jpg").readBytes(), caption:"photo1-a1",album: album1 ).save(failOnError: true)
		new Photo(photo: new File("web-app/photos/2.jpg").readBytes(), caption:"photo2-a1",album:album1 ).save(failOnError: true)
		new Photo(photo: new File("web-app/photos/3.gif").readBytes(), caption:"photo3-a1",album:album1 ).save(failOnError: true)
	
		new Photo(photo: new File("web-app/photos/7.jpg").readBytes(), caption:"photo1-a2",album:album2 ).save(failOnError: true)
		new Photo(photo: new File("web-app/photos/8.jpg").readBytes(), caption:"photo2-a2",album:album2 ).save(failOnError: true)
		new Photo(photo: new File("web-app/photos/9.jpg").readBytes(), caption:"photo3-a2",album:album2 ).save(failOnError: true)
	
			
		
		
		
		def admin = new User(login:"sveta",
			password:"0547597800",
			role:"admin")
			  admin.save()
			  if(admin.hasErrors()){
			  println admin.errors
			  }
		
		
		
		
		
    }
    def destroy = {
    }
}
