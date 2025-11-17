<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LogOut</title>

<style>
    body {
        margin: 0;
        background: #e0f0ff;
        font-family: Arial, sans-serif;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .box {
        background: white;
        width: 350px;
        padding: 30px;
        border-radius: 12px;
        text-align: center;
        box-shadow: 0px 4px 15px rgba(0,0,0,0.2);
        animation: fadeIn 0.8s ease;
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(20px); }
        to { opacity: 1; transform: translateY(0); }
    }

    h2 {
        color: #2575fc;
        margin-bottom: 15px;
    }

    a {
        display: inline-block;
        margin-top: 15px;
        padding: 10px 18px;
        background: #2575fc;
        color: white;
        text-decoration: none;
        font-weight: bold;
        border-radius: 6px;
        transition: 0.3s;
    }

    a:hover {
        background: #1e63d3;
    }
</style>

</head>
<body>

<div class="box">
    <h2>You have been logged out 😊</h2>
    <p>Thank you for using our application.</p>

    <!-- FIXED FILE NAME -->
    <a href="Login.jsp">Go to Login</a>
</div>

</body>
</html>
