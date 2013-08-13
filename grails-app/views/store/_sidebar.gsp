<div class="well" role="navigation">
	<ul class="nav nav-list">
		<li class="nav-header">${message(code: 'custom.sidebar.Album', default: 'Albums')}</li>

	    <g:each var="album" in="${albums}">           
	         <!--  <li>  <g:link action="genre" id="${album.id}"><i class="icon-list"></i> ${album.caption}</g:link></li> -->
	        <li><g:link action='genre' controller='store' params="[albumCaption:album.caption.replaceAll(' ', '_')]"> ${album.caption} </g:link></li> 
	        
	    </g:each>	
	</ul>
</div>
