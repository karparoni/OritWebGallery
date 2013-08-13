
<%@ page import="home.karparoni.web.Photo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'photo.label', default: 'Photo')}" />
	</head>
	<body>
	<div class="container">
            <div class="navbar">
                <div class="navbar-inner">
                    <ul class="nav">
						<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
						<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
						<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                    </ul>
                </div>
            </div>
            
            <style>
				.images{
					width: 100px;
					height: auto;
				}
			</style>
            
            
		<div id="show-photo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list photo">
			
				<g:if test="${photoInstance?.photo}">
				<li class="fieldcontain">
					<span id="photo-label" class="property-label"><g:message code="photo.photo.label" default="Photo" /></span>
					
					<g:link action="show" id="${photoInstance.id}">
						<img src="${createLink(controller:'photo', action:'displayPhoto', id: photoInstance.id)}" class="images">
					</g:link>
					
				</li>
				</g:if>
			
				<g:if test="${photoInstance?.caption}">
				<li class="fieldcontain">
					<span id="caption-label" class="property-label"><g:message code="photo.caption.label" default="Caption" /></span>
					
						<span class="uneditable-input" aria-labelledby="caption-label"><g:fieldValue bean="${photoInstance}" field="caption"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${photoInstance?.album}">
				<li class="fieldcontain">
					<span id="album-label" class="property-label"><g:message code="photo.album.label" default="Album" /></span>
					
						<span class="uneditable-input" aria-labelledby="album-label"><g:link controller="album" action="show" id="${photoInstance?.album?.id}">${photoInstance?.album?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="form-actions">
					<g:hiddenField name="id" value="${photoInstance?.id}" />
					<g:link class="edit" action="edit" id="${photoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
		</div>
	</body>
</html>
