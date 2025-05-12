<%-- 
    Document   : enterAddress
    Created on : 03 May 2025, 2:07:13 PM
    Author     : pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Enter Your Address</title>
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
        }
        .navbar h1 { margin: 0; }
        .navbar a { color: white; text-decoration: none; font-weight: bold; }
        .container {
            max-width: 700px;
            margin: 40px auto;
            padding: 30px;
            background-color: var(--card-color);
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
        }
        label { display: block; margin: 10px 0 5px; font-weight: bold; }
        input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        .btn {
            background-color: var(--primary-color);
            color: var(--button-text);
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
        .btn:hover { background-color: var(--accent-color); }
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
    <h2>Enter Your Address</h2>
    <form action="SaveAddressServlet.do" method="post">
        
        <label for="street">Street Address:</label>
        <input type="text" id="street" name="street" required>

        <label for="city">City:</label>
        <input type="text" id="city" name="city" required>

        <label for="province">Province:</label>
        <input type="text" id="province" name="province" required>

        <label for="postalCode">Postal Code:</label>
        <input type="text" id="postalCode" name="postalCode" required>

        <button type="submit" class="btn">Continue to Booking</button>
    </form>
</div>
</body>
</html>
