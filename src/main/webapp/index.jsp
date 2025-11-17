<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome </title>

<style>
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        background: #e0f0ff;
        color: white;
        text-align: center;
    }

    .container {
        margin-top: 120px;
    }

    h1 {
        font-size: 40px;
        margin-bottom: 10px;
        color:black;
    }

    p {
        font-size: 18px;
        margin-bottom: 40px;
        color:black;
    }

    .btn {
        padding: 12px 28px;
        font-size: 18px;
        margin: 10px;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        font-weight: bold;
        transition: 0.3s;
    }

    .login-btn {
        background: #2575fc;
        color: white;
    }

    .register-btn {
       background: #2575fc;
        color: white;
    }

    .btn:hover {
        transform: scale(1.08);
    }
</style>
</head>

<body>
<div class="container">
    
    <h1>Welcome to My Project</h1>
    <p>This is a simple Register & Login System built using JSP, Servlet, and JDBC.</p>
    

    <button class="btn login-btn" onclick="window.location.href='Login.jsp'">Login</button>
    <button class="btn register-btn" onclick="window.location.href='Register.jsp'">Register</button>
</div>
</body>

</html>
    