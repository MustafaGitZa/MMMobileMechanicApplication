<%-- 
    Document   : displayMechanicAddress
    Created on : 03 May 2025, 3:11:04 PM
    Author     : pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html><title>Mechanic Address - MM Mobile Mechanic</title>
    <style>
        :root {
            --primary-color: #003366;
            --accent-color: #0055a5;
            --background-color: #e5e5e5;
            --card-color: #ffffff;
            --text-color: #333333;
            --button-text: #ffffff;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: var(--background-color);
            margin: 0;
            padding: 0;
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
            max-width: 700px;
            margin: 40px auto;
            padding: 30px;
            background-color: var(--card-color);
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
        }

        h2 {
            color: var(--primary-color);
            margin-bottom: 20px;
        }

        .address-box {
            font-size: 18px;
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 5px;
            border-left: 5px solid var(--primary-color);
        }

        .btn {
            display: inline-block;
            margin-top: 25px;
            padding: 12px 20px;
            background-color: var(--primary-color);
            color: var(--button-text);
            border: none;
            border-radius: 5px;
            text-decoration: none;
            font-size: 16px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: var(--accent-color);
        }
    </style>
</head>
<body>
<%
    String username = (String) session.getAttribute("username");
    if (username == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<div class="navbar">
    <h1>MM Mobile Mechanic</h1>
    <a href="logout.jsp">Logout</a>
</div>

<div class="container">
    <h2>Mechanic's Workshop Address</h2>

    <div class="address-box">
        MM Mobile Mechanic Workshop<br>
        123 Selepe Street<br>
        Mamelodi, Pretoria<br>
        Gauteng, 0012<br>
        South Africa
    </div>

    <a class="btn" href="bookAppointment.jsp">Continue to Book Appointment</a>
</div>
</body>
</html>
