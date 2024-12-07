<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<html>
<head>
    <title>Quiz Application</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            padding: 50px;
        }
        .container {
            text-align: center;
        }
        h1 {
            color: #333;
        }
        .button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            text-decoration: none;
            font-size: 16px;
            margin: 20px;
            cursor: pointer;
        }
        .button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to the Quiz Application</h1>
        <p>Select the portal you want to access:</p>

        <a href="<%= request.getContextPath() %>/upload" class="button">Admin Portal</a>
        <a href="<%= request.getContextPath() %>/answer" class="button">Student Portal</a>
    </div>
</body>
</html>