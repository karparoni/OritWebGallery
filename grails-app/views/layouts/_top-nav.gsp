
  	<div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="brand" href="#">${message(code: 'custom.navigation.logo', default: 'WebAlbum')}</a>
          <div class="nav-collapse collapse">
            <ul class="nav">
              <li class="active"><a href="${createLink(controller:'store')}">${message(code: 'custom.navigation.home', default: 'Home')}</a></li>
              <li>               
                    <a href="#myModal" data-toggle="modal">${message(code: 'custom.navigation.about', default: 'About')}</a>
              </li>   
              <li>           
                    <a href="#myContactModal" data-toggle="modal">${message(code: 'custom.navigation.contactme', default: 'Contact me')}</a>
              </li>
                    
                    
    	     <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">${message(code: 'custom.navigation.language', default: 'Language')}<b class="caret"></b></a>
                <ul class="dropdown-menu">
                <li><a href="?lang=en">${message(code: 'custom.navigation.English', default: 'English')}</a></li>
                <li><a href="?lang=iw_IL">${message(code: 'custom.navigation.Hebrew', default: '\u05E2\u05D1\u05E8\u05D9\u05EA')}</a></li>
                <li><a href="?lang=ru">${message(code: 'custom.navigation.Russian', default: 'Русский')}</a></li>
                </ul>
              </li>
                    
                            
          <%--   <g:if test="${session.user}">  --%>
    	     <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">${message(code: 'custom.navigation.admin', default: 'Admin Control')}<b class="caret"></b></a>
                <ul class="dropdown-menu">
                <li><a href="${createLink(controller:'album')}">${message(code: 'custom.navigation.Album', default: 'Album')}</a></li>
                <li><a href="${createLink(controller:'photo')}">${message(code: 'custom.navigation.Photo', default: 'Photo')}</a></li>
                </ul>
              </li>
		<%-- 	</g:if>  --%>
                 

        <%--   
              <li>
              <g:loginControl />
              </li>
              
              --%>
            </ul>
            <%--
            <form class="navbar-form pull-right">
              <input class="span2" type="text" placeholder="Email">
              <input class="span2" type="password" placeholder="Password">
              <button type="submit" class="btn">Sign in</button>
            </form>
          --%>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
