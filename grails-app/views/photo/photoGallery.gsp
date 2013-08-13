
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
		<meta name="layout" content="main"/>
		<title>Orit Dor</title>
		<r:require module="photoGallery"/>
</head>
<body>
			<%--			<g:render template="/layouts/topNav"/> --%>
		
						
		<script language="javascript">
		    $.noConflict();
		    jQuery(document).ready(
				     function ($){
					   $("#pikame").PikaChoose({carousel:true, carouselVertical:true,autoPlay:true,showCaption:true});
				});
		</script>
						
						<%-- basic

						<script language="javascript">
						 	$.noConflict();
						  	jQuery(document).ready(
								function($){
									$("#pikame").PikaChoose({showCaption:true,autoPlay:false});
								});
						</script>
						
					--%>
					
					<div class="pikachoose">
						<ul id="pikame" class="jcarousel-skin-pika">								 
							<g:each in="${photos}">
								<li><a href="${createLink(controller:'photo', action:'displayPhoto', id: it.id)}" target="_blank">
										<img src="${createLink(controller:'photo', action:'displayPhoto', id: it.id)}"/>
									</a>
									<span>
											${it?.getCaption()}
									</span>
								</li>
							</g:each>
						</ul>
					</div>
					
</body>
</html>