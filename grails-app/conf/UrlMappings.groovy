class UrlMappings {

	static mappings = {
		
		
		
		
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}
		
		"/store/$lang"(controller:'store')

		"/showAlbum/$albumCaption"(controller:'store', action:'genre')
		
		
	/*	"/showAlbum/$albumCaption" {
			controller = 'store'
			action = [GET: 'genre']
			}
		*/
		
		"/login/$action?"(controller: "login")
		"/logout/$action?"(controller: "logout")
		
		
		
		/*"/"(view:"/index")*/
		"/"(controller:"store")
		"500"(view:'/error')
	}
}
