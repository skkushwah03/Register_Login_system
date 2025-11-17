<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    // Check if session exists
    String name = (String) session.getAttribute("session_name");

    if (name == null) {
        // Prevent further code execution
        response.sendRedirect("Login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile Page</title>

<style>
    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background: #e0f0ff;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .container {
        background: white;
        width: 380px;
        padding: 35px 40px;
        border-radius: 15px;
        box-shadow: 0px 6px 20px rgba(0,0,0,0.2);
        text-align: center;
        animation: fadeIn 0.8s ease;
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(20px); }
        to { opacity: 1; transform: translateY(0); }
    }

    .avatar {
        width: 90px;
        height: 90px;
        border-radius: 50%;
        background: #2575fc;
        color: white;
        display: flex;
        justify-content: center;
        align-items: center;
        margin: 0 auto 15px auto;
        font-size: 36px;
        font-weight: bold;
        box-shadow: 0px 4px 12px rgba(0,0,0,0.2);
    }

    h2 {
        color: #333;
        font-size: 24px;
        margin-bottom: 8px;
    }

    p {
        color: #555;
        font-size: 15px;
        margin-bottom: 20px;
    }

    .btn-logout {
        display: inline-block;
        padding: 12px 22px;
        background: #ff4d4d;
        color: white;
        text-decoration: none;
        border-radius: 8px;
        font-weight: 600;
        font-size: 16px;
        transition: 0.3s;
    }

    .btn-logout:hover {
        background: #e02e2e;
    }
</style>

</head>
<body>

<div class="container">

    <!-- Avatar using first character of username -->
    <div class="avatar"><%= name.toUpperCase().charAt(0) %></div>

    <h2>Welcome, <%= name %>! 😊</h2>

    <p>You are successfully logged in to your dashboard.</p>

    <a href="Logout" class="btn-logout">Logout</a>
</div>

</body>
</html>
