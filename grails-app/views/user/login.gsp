<%@ page import="home.karparoni.web.User" %>
<!DOCTYPE html>
<html> 
  <head> 
    <meta http-equiv="Content-Type"  
          content="text/html; charset=UTF-8"/> 
    <meta name="layout" content="main" />         
  </head> 
  <body> 
  
  
    <div class="container"> 
      <h1>${message(code: 'custom.user.login.label', default: 'Login')}</h1> 
      <g:if test="${flash.message}"> 
        <div class="message">${flash.message}</div> 
      </g:if> 
      
      <g:form action="authenticate" method="post" > 
        <div class="dialog"> 
          <table> 
            <tbody>             
              <tr class="prop"> 
                <td valign="top" class="name"> 
                  <label for="login">${message(code: 'custom.user.login.login', default: 'Login:')}</label> 
                </td> 
                <td valign="top"> 
                  <input type="text"  
                         id="login" name="login"/> 
                </td> 
              </tr>  
           
              <tr class="prop"> 
                <td valign="top" class="name"> 
                  <label for="password">${message(code: 'custom.user.login.password', default: 'Password:')}</label> 
                </td> 
                <td valign="top"> 
                  <input type="password"  
                         id="password" name="password"/> 
                </td> 
              </tr>            
            </tbody> 
          </table> 
        </div> 
         <div class="buttons"> 
            <input class="btn btn-primary" type="submit" value="Login" /> 
        </div> 
      </g:form> 
    </div> 
    
    
    
  </body> 
</html> 