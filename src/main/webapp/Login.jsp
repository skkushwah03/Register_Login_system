<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>

<style>
    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background: #cfe3ff; /* light blue */
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .container {
        background: white;
        width: 350px;
        padding: 25px 35px;
        border-radius: 12px;
        box-shadow: 0px 4px 15px rgba(0,0,0,0.2);
        animation: fadeIn 0.7s ease;
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(20px); }
        to { opacity: 1; transform: translateY(0); }
    }

    h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
    }

    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        margin-bottom: 15px;
        border: 1px solid #aaa;
        border-radius: 6px;
        font-size: 14px;
    }

    .btn {
        width: 100%;
        padding: 10px;
        background: #2575fc;
        color: white;
        border: none;
        border-radius: 6px;
        font-size: 16px;
        cursor: pointer;
        transition: 0.3s;
    }

    .btn:hover {
        background: #1e63d3;
    }

    .register-link {
        margin-top: 10px;
        text-align: center;
        font-size: 14px;
    }

    .register-link a {
        color: #2575fc;
        font-weight: 600;
        text-decoration: none;
    }
</style>

</head>
<body>

<div class="container">
    <h2>Login</h2>

    <!-- FIXED ACTION URL -->
    
    <form action="LoginForm" method="post">
    

        <label>Email</label>
        <input type="text" name="email1" required />

        <label>Password</label>
        <input type="password" name="pass1" required />

        <button class="btn" type="submit">Login</button>
    </form>

    <div class="register-link">
        New User? <a href="Register.jsp">Register Here</a>
    </div>
</div>

</body>
</html>
