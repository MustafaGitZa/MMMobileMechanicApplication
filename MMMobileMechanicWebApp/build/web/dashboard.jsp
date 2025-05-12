<%@ page import="java.util.*" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html>
<head>
    <title>MM Mobile Mechanic Dashboard</title>
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

        /* Navbar */
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

        /* Tabs and Content */
        .tabs {
            max-width: 900px;
            margin: 40px auto;
            background-color: var(--card-color);
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
        }

        .tab-buttons {
            display: flex;
            border-bottom: 2px solid var(--primary-color);
            background-color: var(--primary-color);
        }

        .tab-buttons button {
            flex: 1;
            padding: 16px;
            background: none;
            border: none;
            color: white;
            font-weight: bold;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .tab-buttons button:hover,
        .tab-buttons .active {
            background-color: var(--accent-color);
        }

        .tab-content {
            display: none;
            padding: 30px;
            color: var(--text-color);
        }

        .tab-content.active {
            display: block;
        }

        .welcome {
            font-size: 20px;
            margin-bottom: 20px;
            font-weight: bold;
        }

        .btn {
            display: inline-block;
            margin: 12px 8px 0 0;
            padding: 14px 22px;
            background-color: var(--primary-color);
            color: var(--button-text);
            text-decoration: none;
            font-size: 15px;
            border-radius: 5px;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: var(--accent-color);
        }

        h2 {
            color: var(--primary-color);
        }
    </style>

    <script>
        function openTab(index) {
            const contents = document.querySelectorAll('.tab-content');
            const buttons = document.querySelectorAll('.tab-buttons button');
            contents.forEach(c => c.classList.remove('active'));
            buttons.forEach(b => b.classList.remove('active'));
            contents[index].classList.add('active');
            buttons[index].classList.add('active');
        }

        window.onload = function () {
            openTab(0); // Open first tab by default
        }
    </script>
</head>
<body>
<%
    String username = (String)session.getAttribute("username");
%>

<div class="navbar">
    <h1>MM Mobile Mechanic</h1>
    <a href="logout.jsp">Logout</a>
</div>

<div class="tabs">
    <div class="tab-buttons">
        <button onclick="openTab(0)" class="active">Dashboard</button>
        <button onclick="openTab(1)">Profile</button>
    </div>

    <div class="tab-content active">
        <div class="welcome">Welcome, <%= username %></div>
        <p>Select an action below to get started:</p>
        <a class="btn" href="bookingType.jsp">Book Appointment</a>
        <a class="btn" href="viewAppointmentsServlet.do">View Appointments</a>
        <a class="btn" href="profile.jsp">Edit Profile</a>
        <a class="btn" href="logout.jsp">Logout</a>
    </div>

    <div class="tab-content">
        <h2>Book an Appointment</h2>
        <p>Ready to book? Start here:</p>
        <a class="btn" href="bookingType.jsp">Book Now</a>
    </div>

    <div class="tab-content">
        <h2>Your Appointments</h2>
        <p>Here?s your appointment history and upcoming bookings:</p>
        <a class="btn" href="viewAppointmentsServlet.do">View My Appointments</a>
    </div>

    <div class="tab-content">
        <h2>Your Profile</h2>
        <p>Update your contact information and preferences:</p>
        <a class="btn" href="profile.jsp">Edit My Profile</a>
    </div>
</div>

</body>
</html>
