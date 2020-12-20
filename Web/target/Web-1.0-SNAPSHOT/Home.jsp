<%-- 
    Document   : Home
    Created on : Dec 20, 2020, 1:41:51 PM
    Author     : DELL
--%>

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
           
           if(Utils.authenticate(username, password))
           {
               String sessionid = UUID.randomUUID().toString().toString().replace("-", "").toUpperCase();
               
               Cookie cookie = new Cookie("sesid", "123");
               response.addCookie(cookie);
               session.setAttribute(sessionid, "username");
               
               out.print("Welcome " + username);
           }
           
           else
           {
               
               String userText = null;
               
               for (Cookie cookie : request.getCookies())
               {
                   if(cookie.getName().equals("sesid"))
                   {
                       String sessionid = cookie.getValue();
                       userText = session.getAttribute(sessionid).toString();
                   }
               }
               response.sendRedirect("Login.jsp");
           
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
