<%@ page import="home.karparoni.web.Photo" %>



<div class="fieldcontain ${hasErrors(bean: photoInstance, field: 'photo', 'error')} ">
	<label for="photo">
		<g:message code="photo.photo.label" default="Photo" />
		
	</label>
	<input type="file" id="photo" name="photo" />
</div>

<div class="fieldcontain ${hasErrors(bean: photoInstance, field: 'caption', 'error')} required">
	<label for="caption">
		<g:message code="photo.caption.label" default="Caption" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="caption" required="" value="${photoInstance?.caption}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: photoInstance, field: 'album', 'error')} required">
	<label for="album">
		<g:message code="photo.album.label" default="Album" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="album" name="album.id" from="${home.karparoni.web.Album.list()}" optionKey="id" required="" value="${photoInstance?.album?.id}" class="many-to-one"/>
</div>

