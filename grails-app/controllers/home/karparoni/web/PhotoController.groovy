package home.karparoni.web

class PhotoController {
    static scaffold = true
	
	
	def beforeInterceptor = {
		log.info("Executing action=$actionName params=$params")
		}
	
	def displayPhoto(){
		def photo = Photo.get(params.id)
		
		if(photo){
		response.contentType = "image/jpeg"
		response.contentLength = photo?.photo?.length
		response.outputStream.write(photo?.photo)
		}
		}
		
		def showPhotoGallery(){
		params.max = Math.min(params.max ? params.int('max') : 10, 100)
		render(view:"NR_photoGallery",model:[photos: Photo.list(params)])
		}
	
	
}
