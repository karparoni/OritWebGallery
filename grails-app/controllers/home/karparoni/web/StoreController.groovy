package home.karparoni.web

class StoreController {

/*	def beforeInterceptor = {
		log.info("Executing action=$actionName params=$params")
		}*/
	
	
	def index(){
		//redirect (action: "genre")
		//log.info("Executing action $actionName with params=$params")
		
		//[albums: Album.list()]
		render(view:"genre",model:[albums:Album.list()])
		//render(view:"carusel")
	}
	
	def about() {}
	
	def genre()
	{	
		//log.info("Executing action $actionName params=$params")	
		
		def nameToSearchFor1 = params.albumCaption.replaceAll('_', ' ')
		def albumInstance = Album.findByCaption(nameToSearchFor1, [fetch:[photos:'join']])
		
			def photoInstanceList = albumInstance.photos
			
			def firstPhoto=photoInstanceList.first().getAt('id')
			
			//log.info("GENRE-> firstPhoto=$firstPhoto,  albumInstance=$albumInstance, photoInstanceList = $photoInstanceList  ")
			
			[albums: Album.list(),photoInstanceList: photoInstanceList, firstPhoto: firstPhoto]

	}
	
	
	def showTime() {
		render "The time is ${new Date()}"
		}
	
	
}
