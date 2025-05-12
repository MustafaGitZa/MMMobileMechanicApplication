<%-- 
    Document   : viewAppointmentsOutcome
    Created on : 03 May 2025, 12:50:16 PM
    Author     : pc
--%>

<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entities.Appointment"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Appointments - MM Mobile Mechanic</title>
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

        .message {
            font-size: 16px;
            color: var(--text-color);
        }
    </style>
</head>
<body>
<%
    List<Appointment> appointments = (List<Appointment>) session.getAttribute("appointments");
%>

<div class="navbar">
    <h1>MM Mobile Mechanic</h1>
    <a href="dashboard.jsp">Dashboard</a>
</div>

<div class="container">
    <h2>Your Appointments</h2>

    <% if (appointments == null || appointments.isEmpty()) { %>
        <p class="message">You have not booked any appointments yet.</p>
    <% } else { %>
        <table>
            <tr>
                <th>Date</th>
                <th>Time</th>
                <th>Service</th>
            </tr>
            <% for (Appointment a : appointments) { %>
                <tr>
                    <td><%= a.getDate() %></td>
                    <td><%= a.getTime() %></td>
                    <td><%= a.getService() %></td>
                </tr>
            <% } %>
        </table>
    <% } %>

    <a href="bookAppointment.jsp" class="btn">Book New Appointment</a><br><br>
    <a href="dashboard.jsp" class="btn">Go Back to the Dashboard</a>
</div>

</body>
</html>
