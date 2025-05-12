<%-- 
    Document   : viewAppointments
    Created on : 03 May 2025, 12:24:26 PM
    Author     : pc
--%>

<%@page import="za.ac.tut.entities.Address"%>
<%@page import="java.time.LocalTime"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entities.Appointment"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Your Appointments - MM Mobile Mechanic</title>
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
            max-width: 900px;
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

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 14px;
            text-align: left;
            border-bottom: 1px solid #ccc;
        }

        th {
            background-color: var(--primary-color);
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        .btn {
            display: inline-block;
            margin-top: 20px;
            padding: 12px 20px;
            background-color: var(--primary-color);
            color: var(--button-text);
            text-decoration: none;
            font-size: 15px;
            border-radius: 5px;
            border: none;
            cursor: pointer;
        }

        .btn:hover {
            background-color: var(--accent-color);
        }
    </style>
</head>
<body>
<%
    LocalDate date = (LocalDate)session.getAttribute("date");
    LocalTime time = (LocalTime)session.getAttribute("time");
    String service = (String)session.getAttribute("service");
    String street = (String)session.getAttribute("street");
    String city = (String)session.getAttribute("city");
    String province = (String)session.getAttribute("province");
    String postalCode = (String)session.getAttribute("postalCode");
    String bookingType = (String)session.getAttribute("bookingType");
%>

<div class="navbar">
    <h1>MM Mobile Mechanic</h1>
    <a href="dashboard.jsp">Dashboard</a>
</div>

<div class="container">
    <h2>Your Appointment</h2>
    <p>Your appointment was successfully booked. Confirm the details below:</p>
    <table>
        <tr>
            <td>Date:</td>
            <td><%=date%></td>
        </tr>
        <tr>
            <td>Time:</td>
            <td><%=time%></td>
        </tr>
        <tr>
            <td>Service:</td>
            <td><%=service%></td>
        </tr><br>
        
    </table><br><br>
    <p>Your Address</p>
    <table>
        <tr>
            <td>Street:</td>
            <td><%=street%></td>
        </tr>
        <tr>
            <td>City:</td>
            <td><%=city%></td>
        </tr>
        <tr>
            <td>Province:</td>
            <td><%=province%></td>
        </tr>
        <tr>
            <td>Postal code:</td>
            <td><%=postalCode%></td>
        </tr>
    </table>
        

        <a href="bookAppointment.jsp" class="btn">Book Another Appointment</a><br><br>
    <a href="dashboard.jsp" class="btn">Go Back to the Dashboard</a>
</div>

</body>
</html>
