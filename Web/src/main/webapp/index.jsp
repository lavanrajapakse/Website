<%-- 
    Document   : Web
    Created on : Dec 19, 2020, 5:03:29 PM
    Author     : DELL
--%>

<%@page import="com.mycompany.web.Student"%>
<%@page import="com.mycompany.web.WebHelper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        Student[] Student = WebHelper.getStudent();
        
        out.print("<ul>");
        for(Student st : Student)
        {
            out.print("<li>" + st.getName() + "</li>");
        }
        out.print("</ul>");
        
        out.print("<br/>");
        
        out.print("<table border = 1>");
        out.print("<tr><th>Student ID</th><th>Student Name</th><th>Student NIC</th></tr>");
        for(Student st : Student)
        {
            out.print("<tr>");
            out.print("<td>" + st.getID() + "</td>");
            out.print("<td>" + st.getName() + "</td>");
            out.print("<td>" + st.getNIC() + "</td>");
        }
        
        out.print("</table>");
        %>
    </body>
</html>
