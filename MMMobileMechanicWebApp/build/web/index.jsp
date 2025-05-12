<%-- 
    Document   : index
    Created on : 01 May 2025, 11:45:06 PM
    Author     : pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">
    <style>
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

        header {
            background-color: rgba(0, 51, 102, 0.7);
            color: white;
            padding: 25px 0;
            text-align: center;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        header h1 {
            margin: 0 0 10px 0;
            font-size: 3em;
            letter-spacing: 2px;
        }

        header p {
            margin-top: 10px;
            font-size: 1.2em;
            font-weight: 400;
            opacity: 0.9;
        }

        .main-content {
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 20px;
            text-align: center;
            max-width: 800px;
            margin: auto;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .login-btn {
            position: fixed;
            bottom: 20px;
            left: 20px;
            background-color: #003366;
            color: white;
            border: none;
            padding: 12px 24px;
            font-size: 1rem;
            border-radius: 8px;
            cursor: pointer;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
            transition: background-color 0.3s ease;
        }

        .login-btn:hover {
            background-color: #005599;
        }

        footer {
            background-color: rgba(0, 51, 102, 0.7);
            color: white;
            padding: 20px 0;
            text-align: center;
            font-size: 0.9em;
            border-top: 1px solid #004080;
        }
    </style>
</head>
<body>
    <header>
        <h1>MM Mobile Mechanic</h1>
        <p>Your Trusted Mobile Mechanic - Bringing Affordable, Efficient, and Reliable Service to You.</p>
    </header>

    <main>
        <div class="main-content">
            <h2>Welcome!</h2>
            <p>We are here to take care of your vehicle wherever you are.</p>
        </div>
    </main>

    <button class="login-btn" onclick="location.href='roles.jsp'">Proceed to Register/Login</button>

    <footer>
        <p>&copy; 2024 MM Mobile Mechanic. All rights reserved.</p>
    </footer>
</body>
</html>