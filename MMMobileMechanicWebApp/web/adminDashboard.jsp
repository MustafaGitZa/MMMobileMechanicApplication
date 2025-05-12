<%-- 
    Document   : adminDashboard
    Created on : 03 May 2025, 10:37:28 PM
    Author     : pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<%
    Boolean isAdmin = (Boolean) session.getAttribute("admin_logged_in");
    if (isAdmin == null || !isAdmin) {
        response.sendRedirect("adminLogin.jsp");
        return;
    }

    String adminPhone = (String) session.getAttribute("admin_phone");
    String admin_username = application.getInitParameter("admin_username");
    
    
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard - MM Mobile Mechanic</title>
    <style>
        :root {
            --primary-color: #003366;
            --accent-color: #0055a5;
            --background-color: #f4f4f4;
            --card-color: #ffffff;
            --button-text: #ffffff;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: var(--background-color);
        }

        .navbar {
            background-color: var(--primary-color);
            color: white;
            padding: 20px 30px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .navbar h1 {
            margin: 0;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            font-weight: bold;
        }

        .container {
            max-width: 900px;
            margin: 40px auto;
            padding: 30px;
            background-color: var(--card-color);
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
        }

        h2 {
            color: var(--primary-color);
            margin-bottom: 20px;
        }

        .admin-info {
            margin-bottom: 20px;
        }

        .actions {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .actions a {
            display: inline-block;
            background-color: var(--primary-color);
            color: var(--button-text);
            text-decoration: none;
            padding: 12px 20px;
            border-radius: 6px;
            text-align: center;
            transition: background-color 0.3s;
        }

        .actions a:hover {
            background-color: var(--accent-color);
        }
    </style>
</head>
<body>

<div class="navbar">
    <h1>Admin Dashboard</h1>
    <a href="logout.jsp">Logout</a>
</div>

<div class="container">
    <h2>Welcome, admin <%=admin_username%></h2>
    <div class="admin-info">
        <p><strong>Phone Number:</strong> <%= adminPhone %></p>
    </div>

    <div class="actions">
        <form action="viewAppointmentsServlet.do" method="post">
            <button>View All Appointments</button>
        </form>
        <a href="viewClients.jsp">View Registered Clients</a>
        <a href="index.jsp">Back to Home</a>
    </div>
</div>

</body>
</html>
