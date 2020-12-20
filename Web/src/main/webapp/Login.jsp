<%-- 
    Document   : Login
    Created on : Dec 20, 2020, 1:57:56 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <form action="Home.jsp" method="get">
  <label for="fname">Username:</label>
  <input type="text" id="username" name="username"><br><br>
  <label for="lname">Password:</label>
  <input type="password" id="password" name="password"><br><br>
  <input type="submit" value="Submit">
</form>
    </body>
</html>
