
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
				      <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                    </ul>
                </div>
            </div>
		<div id="list-photo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			
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
					
						<th><g:message code="photo.album.label" default="Album" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${photoInstanceList}" status="i" var="photoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<%--<td><g:link action="show" id="${photoInstance.id}">${fieldValue(bean: photoInstance, field: "photo")}</g:link></td>--%>
						<td>
							<g:link action="show" id="${photoInstance.id}">
								<img src="${createLink(controller:'photo', action:'displayPhoto', id: photoInstance.id)}" class="images">
							</g:link>
						</td>
					
						<td>${fieldValue(bean: photoInstance, field: "caption")}</td>
					
						<td>${fieldValue(bean: photoInstance, field: "album")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${photoInstanceTotal}" />
			</div>
		</div>
		</div>
	</body>
</html>
