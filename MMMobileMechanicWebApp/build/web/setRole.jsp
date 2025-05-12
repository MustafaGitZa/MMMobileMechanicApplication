<%-- 
    Document   : setRole
    Created on : 03 May 2025, 7:19:41 PM
    Author     : pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Set Role Page</title>
    </head>
    <body>
        <%
    String role = request.getParameter("role");
    session.setAttribute("role", role);

    if(role.equalsIgnoreCase("client")){
      response.sendRedirect("login.jsp");
    }else if(role.equalsIgnoreCase("admin")){
        response.sendRedirect("adminLogin.jsp");
    }
   
%>
    </body>
</html>
