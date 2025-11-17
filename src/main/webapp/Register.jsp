<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Form</title>
<style>
   body {
        margin: 0;
        font-family: Arial, sans-serif;
        background: #e0f0ff;   /* LIGHT BLUE */
        height: 100vh;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: flex-start;
        padding-top: 30px;
    }

    .container {
        background: white;
        padding: 25px 35px;
        border-radius: 12px;
        width: 350px;
        box-shadow: 0px 4px 15px rgba(0,0,0,0.2);
        animation: fadeIn 0.8s ease;
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

    label {
        font-weight: 600;
    }

    input[type="text"],
    input[type="password"],
    select {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        margin-bottom: 15px;
        border-radius: 6px;
        border: 1px solid #aaa;
        font-size: 14px;
    }

    .gender-group {
        margin-bottom: 15px;
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

    .login-btn {
        display: inline-block;
        width: 90%;
        margin-top: 15px;
        text-align: center;
        background: #2575fc;
        color: white;
        padding: 10px 20px;
        border-radius: 6px;
        font-weight: 600;
        text-decoration: none;
        transition: 0.3s;
    }

    .login-btn:hover {
        background: #1e63d3;
    }
</style>
</head>
<body>

<%
    String msg = (String) request.getAttribute("message");
    String color = (String) request.getAttribute("msgColor");
    if (msg != null) {
%>
    <h3 style="color:<%=color%>;"><%=msg%></h3>
<%
    }
%>

<div class="container">
    <h2>Registration Form</h2>

    <form action="regForm" method="post">

        <label>Name</label>
        <input type="text" name="name1" required />

        <label>Email</label>
        <input type="text" name="email1" required />

        <label>Password</label>
        <input type="password" name="pass1" required />

        <label>Gender</label>
        <div class="gender-group">
            <input type="radio" name="gender1" value="male" /> Male
            <input type="radio" name="gender1" value="female" /> Female
        </div>

        <label>City</label>
        <select name="city1">
            <option>Select City</option>
            <option>Delhi</option>
            <option>Mumbai</option>
            <option>Pune</option>
            <option>Agra</option>
            <option>Bangalore</option>
        </select>

        <button class="btn" type="submit">Register</button>

    </form>

    <!-- LOGIN BUTTON OUTSIDE FORM -->
    <a href="Login.jsp" class="login-btn">Go to Login Page</a>
</div>

</body>
</html>
