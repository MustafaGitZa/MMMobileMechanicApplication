<%-- 
    Document   : register
    Created on : 02 May 2025, 1:16:09 AM
    Author     : pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register - MM Mobile Mechanic</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            font-family: 'Inter', sans-serif;
            background-image: url('resources/images/mm mechanic welcome page.png');
            background-size: cover;
            background-position: center;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-container {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
            width: 90%;
            max-width: 400px;
            text-align: center;
        }

        h2 {
            color: #003366;
            margin-bottom: 20px;
        }

        input[type="text"], input[type="password"], input[type="tel"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0 20px 0;
            border: 1px solid #ccc;
            border-radius: 8px;
        }

        button {
            width: 100%;
            padding: 12px;
            background-color: #003366;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 1em;
            cursor: pointer;
            transition: 0.3s;
        }

        button:hover {
            background-color: #005599;
        }

        .link {
            margin-top: 15px;
            display: block;
            font-size: 0.9em;
        }

        .link a {
            color: #003366;
            text-decoration: none;
        }

        .link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Register</h2>
        <form action="RegisterServlet.do" method="post">
            <input type="text" name="username" placeholder="Choose a username" required="">
            <input type="text" name="password" placeholder="Create a password" required="">
            <input type="text" name="phone" placeholder="Phone number" required="">
            <button type="submit">Register</button>
        </form>
        <div class="link">
            <p>Already have an account? <a href="login.jsp">Login Here</a></p>
        </div>
    </div>
</body>
</html>
