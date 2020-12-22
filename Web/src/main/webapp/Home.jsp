<%-- 
    Document   : Home
    Created on : Dec 20, 2020, 1:41:51 PM
    Author     : DELL
--%>

<%@page import="com.mycompany.web.UserSession"%>
<%@page import="java.util.UUID"%>
<%@page import="com.mycompany.web.Utils"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        <% 
           String username = "";
           String password = "";
           if(request.getParameter("username") != null)
           {
               username = request.getParameter("username").toString();
           }
           
           if(request.getParameter("password") != null)
           {
               password = request.getParameter("password").toString();
           }
           
           //When username and password are provided as POST paramters
           if(Utils.authenticate(username, password))
           {
               String sessionid = UUID.randomUUID().toString().toString().replace("-", "").toUpperCase();
               
               //Create and include it in response
               Cookie cookie = new Cookie("sesid", sessionid);
               response.addCookie(cookie);
               
               //Include username in session
               UserSession userSession = new UserSession(username, "test login");
               session.setAttribute(sessionid, userSession);
               
               out.print("Welcome " + username);
           }
           
           else
           {
               //When username and password are not provided as POST paramters
               String userText = null;
               
               //Check each cookie from request
               for (Cookie cookie : request.getCookies())
               {
                   //Check sesid cookie
                   if(cookie.getName().equals("sesid"))
                   {
                       String sessionid = cookie.getValue();
                       //Load the username from session
                       UserSession userSession = (UserSession)session.getAttribute(sessionid);
                       userText = userSession.getUsername();
                   }
               }
           
           if(userText == null)
           {
               response.sendRedirect("Login.jsp");
           }
           
           else
           {
               out.print("Welcome " + userText);
           }
           
           }
        %>
        
           
    </body>
</html>
