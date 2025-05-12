<%-- 
    Document   : bookingType
    Created on : 03 May 2025, 1:44:42 PM
    Author     : pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking Type - MM Mobile Mechanic</title>
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
            font-size: 24px;
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

        label {
            display: block;
            margin: 12px 0 6px;
            font-weight: bold;
        }

        input, select, textarea {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            margin-bottom: 15px;
            box-sizing: border-box;
        }

        .btn {
            background-color: var(--primary-color);
            color: var(--button-text);
            border: none;
            padding: 12px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
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
        response.sendRedirect("login.jsp"); // redirect if not logged in
    }
%>

<div class="navbar">
    <h1>MM Mobile Mechanic</h1>
    <a href="logout.jsp">Logout</a>
</div>

<div class="container">
    <h2>Preferred Booking Type</h2>
    <form action="BookingTypeServlet.do" method="post">
        <label for="booking_type">Do you want our mechanic to come to your address?</label>
        <select id="booking_type" name="booking_type" required="">
            <option value="">-- Select Yes/No --</option>
            <option value="Yes">Yes, let him come to me.</option>
            <option value="No">No, I will come to him.</option>
        </select>

        <button type="submit" class="btn">Continue</button>
    </form>
</div>

</body>
</html>
