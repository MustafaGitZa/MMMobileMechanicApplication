<%-- 
    Document   : roles.jsp
    Created on : 03 May 2025, 7:16:32 PM
    Author     : pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Select Role - MM Mobile Mechanic</title>
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
            font-family: 'Inter', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            background-image: url('resources/images/mm mechanic welcome page.png');
            background-size: cover;
            background-position: center;
            position: relative;
        }

        .container {
            max-width: 600px;
            margin: 100px auto;
            padding: 30px;
            background-color: var(--card-color);
            text-align: center;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
        }

        h1 {
            color: var(--primary-color);
            margin-bottom: 30px;
        }

        .btn {
            background-color: var(--primary-color);
            color: var(--button-text);
            border: none;
            padding: 15px 25px;
            margin: 10px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
            text-decoration: none;
            display: inline-block;
        }

        .btn:hover {
            background-color: var(--accent-color);
        }
    </style>
</head>
<body>

<div class="container">
    <h1>What is your role?</h1>
    <form action="setRole.jsp" method="post">
        <button type="submit" name="role" value="client" class="btn">Client</button>
        <button type="submit" name="role" value="admin" class="btn">Admin</button>
    </form>
</div>

</body>
</html>
