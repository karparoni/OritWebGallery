<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1255"/>
<meta name="layout" content="main"/>
</head>

  <body>

    <div class="container">
        <div class="row">
		    <div class="sidebar span3">
				<g:render template="sidebar"></g:render>
			</div> 

 			<div class="span9">
			     <g:if test="${photoInstanceList}">
			     	<g:render template="list"></g:render>
			     </g:if>
			     <g:else>
			     	<h2>Please choice album</h2>
			     	<img src="photos/1.jpg" class="img-circle">
			     </g:else>
		     </div> <!--  "span9"-->
         </div> <!-- row -->
    </div> <!-- /container -->

    <!-- Le javascript
    ================================================== -->
    <!-- Grab Google CDN's jQuery, with a protocol relative URL; fall back to local if necessary -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/jquery-1.7.2.min.js"><\/script>')</script>
    <!-- Bootstrap jQuery plugins compiled and minified -->
    <script>
      $(document).ready(function(){
        $('.carousel').carousel({
          interval: 4000
        });
      });
    </script>


  </body>
</html>
