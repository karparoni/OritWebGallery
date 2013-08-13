<!DOCTYPE html>
<html lang="en">
   <head><%--
 <style type="text/css">
      /* Sticky footer styles
      -------------------------------------------------- */
      html,
      body {
            padding-top: 60px;
        	padding-bottom: 40px;
        /* The html and body elements cannot have any padding or margin. */
      }
      footer {
         	position:absolute;
   			bottom:0;
   			width:100%;
  			height:30px;   /* Height of the footer */
   			text-align: center;
 			/*background:#6cf;*/ 
      }         
    </style>
    --%>
      <link rel="shortcut icon" href="${resource(dir: 'images', file: 'oritico.jpg')}" type="image/x-icon">
      <title><g:message code="custom.main.title" default="Orit Dor Gallery"/></title>
      <r:require modules="bootstrap"/>
      <g:layoutTitle/>
      <r:layoutResources/>
      <link rel="stylesheet" href="${resource(dir: 'css', file: 'local_custom.css')}" type="text/css">
   </head>
   <body>
    <header>
    	<g:render template="/layouts/top-nav"/>
    	<g:render template="/layouts/header" />  
    </header>
    <div>
    	<br>
    </div>
<div>
     <g:layoutBody/>
</div>
      
      
	
	<footer>
      <g:copyright  startYear="2012">${message(code: 'custom.footer.message', default: 'Groovy && Grails project -> karparoni@gmail.com')}</g:copyright>
      </footer>
     
      <%--
    <g:render template="/layouts/footer" />  
      --%> 
      <r:layoutResources/>
      <g:render template="/layouts/about-modal" />   
      <g:render template="/layouts/contactme-modal" />
   </body>
</html>