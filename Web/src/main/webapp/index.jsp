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
        
        <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
       <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.css">
       <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.js"></script>

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
        
        out.print("<table id='1' class='display'>");
        out.print("<thead><tr><th>Student ID</th><th>Student Name</th><th>Student NIC</th></tr></thead>");
        out.print("<tbody>");
        for(Student st : Student)
        {
            out.print("<tr>");
            out.print("<td>" + st.getID() + "</td>");
            out.print("<td>" + st.getName() + "</td>");
            out.print("<td>" + st.getNIC() + "</td>");
        }
        out.print("</tbody>");
        out.print("</table>");
        %>
        
        <script>
            $(document).ready( function () 
            {
               $('#1').DataTable();
            } );
        </script>
    </body>
</html>
