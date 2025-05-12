<%-- 
    Document   : logout
    Created on : 03 May 2025, 10:26:27 PM
    Author     : pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout Page</title>
    </head>
    <body>
        
        <%
            session.invalidate();

            response.sendRedirect("index.jsp");
        %>
    </body>
</html>
