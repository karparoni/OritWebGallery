
<%@ page import="home.karparoni.web.Album" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'album.label', default: 'Album')}" />
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
		<div id="show-album" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			
			<g:if test="${flash.message}">
			
			
			<div class="message" role="status">${flash.message}</div>
			
			</g:if>
			
			
			<ol class="property-list album">
			
				<g:if test="${albumInstance?.caption}">
				<li class="fieldcontain">
					<span id="caption-label" class="property-label"><g:message code="album.caption.label" default="Caption" /></span>
					
						<span class="uneditable-input" aria-labelledby="caption-label"><g:fieldValue bean="${albumInstance}" field="caption"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${albumInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="album.description.label" default="Description" /></span>
					
						<span class="uneditable-input" aria-labelledby="description-label"><g:fieldValue bean="${albumInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${albumInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="album.dateCreated.label" default="Date Created" /></span>
					
						<span class="uneditable-input" aria-labelledby="dateCreated-label"><g:formatDate date="${albumInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${albumInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="album.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="uneditable-input" aria-labelledby="lastUpdated-label"><g:formatDate date="${albumInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${albumInstance?.photos}">
				<li class="fieldcontain">
				
				
				<!-- 
					<span id="photos-label" class="property-label"><g:message code="album.photos.label" default="Photos" /></span>
					
						<g:each in="${albumInstance.photos}" var="p">
						<span class="uneditable-input" aria-labelledby="photos-label"><g:link controller="photo" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				 -->
				 
			<style>
				.images{
					width: 200px;
					height: auto;
				}
			</style>
			
			
			<table class="table table-bordered table-striped">
				<thead>
					<tr>
					
						<g:sortableColumn property="photo" title="${message(code: 'photo.photo.label', default: 'Photo')}" />
					
						<g:sortableColumn property="caption" title="${message(code: 'photo.caption.label', default: 'Caption')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${albumInstance?.photos}" status="i" var="photoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<%--<td><g:link action="show" id="${photoInstance.id}">${fieldValue(bean: photoInstance, field: "photo")}</g:link></td>--%>
						<td>
							<g:link action="show" id="${photoInstance.id}">
								<img src="${createLink(controller:'photo', action:'displayPhoto', id: photoInstance.id)}" class="images">
							</g:link>
						</td>
					
						<td>${fieldValue(bean: photoInstance, field: "caption")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
				 
				 	
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="form-actions">
					<g:hiddenField name="id" value="${albumInstance?.id}" />
					<g:link class="edit" action="edit" id="${albumInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
		</div>
	</body>
</html>
