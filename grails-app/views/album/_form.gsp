<%@ page import="home.karparoni.web.Album" %>



<div class="fieldcontain ${hasErrors(bean: albumInstance, field: 'caption', 'error')} required">
	<label for="caption">
		<g:message code="album.caption.label" default="Caption" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="caption" maxlength="40" required="" value="${albumInstance?.caption}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: albumInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="album.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${albumInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: albumInstance, field: 'photos', 'error')} ">
	<label for="photos">
		<g:message code="album.photos.label" default="Photos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${albumInstance?.photos?}" var="p">
    <li><g:link controller="photo" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="photo" action="create" params="['album.id': albumInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'photo.label', default: 'Photo')])}</g:link>
</li>
</ul>

</div>

