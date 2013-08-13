<%@ page import="home.karparoni.web.Album" %>
  <div class="body">
  				<h2>BBBBBBBBBBBBBB</h2>
  				
  		<g:each var="photo" in="${photos}" >
			<li>${photo.caption}</li>
		</g:each>
		
		
		<h2>BBBBBBBBBBBBBB</h2>

		<g:findAll in="${photos}" expr="${it.album.caption.contains('a2')}"> 
			<li>${it.caption}</li>
		</g:findAll>
		
		
  				
  </div>
