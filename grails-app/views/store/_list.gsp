     
      
      <!--  Carousel -->
      <!--  consult Bootstrap docs at 
            http://twitter.github.com/bootstrap/javascript.html#carousel -->
      <div id="this-carousel-id" class="carousel slide">
        <div class="carousel-inner">
        
        
        
        
           <g:each in="${photoInstanceList?}">
                    
	           <g:if test="${ it.id == firstPhoto }"  >
	           		<div class="item active">
	           </g:if>
	           <g:else>
	           		<div class="item">
	           </g:else>
	           
	            <a href="#"> 
	               <img src="${createLink(controller:'photo', action:'displayPhoto', id: it.id)}"  alt="Antennae Galaxies" />
	            </a>
	            <div class="carousel-caption">
	              <p>${message(code: 'custom.global.GalleryName', default: 'Photo Gallery')}</p>
	              <p>${it.caption}</p>
	            </div>
	          </div>
  
    		</g:each>
        
                
        </div><!-- .carousel-inner -->
        <!--  next and previous controls here
              href values must reference the id for this carousel -->
          <a class="carousel-control left" href="#this-carousel-id" data-slide="prev">&lsaquo;</a>
          <a class="carousel-control right" href="#this-carousel-id" data-slide="next">&rsaquo;</a>
      </div><!-- .carousel -->
      <!-- end carousel -->