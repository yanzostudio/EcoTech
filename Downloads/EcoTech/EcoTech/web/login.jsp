<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EcoTech - Login</title>
    <link rel="stylesheet" href="css/loginstyle.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
    <div class="container">
        <div class="form-box-login">
            <form action="CustomerAuthController" method="post">
    <input type="hidden" name="action" value="login">
    <div class="logo">
        <img src="img/ecotech.svg" />
    </div>
    <h1>Login</h1>
    <div class="input-box-login">
        <input type="text" name="email" placeholder="Email" required>
        <i class='bx bxs-envelope'></i>
    </div>
    <div class="input-box-login">
        <input type="password" name="password" placeholder="Password" required>
        <i class='bx bx-lock-alt'></i>
    </div>
    <button type="submit" class="btn">Login</button>
    <%
        String errorMessage = (String) request.getAttribute("error");
        if (errorMessage != null) {
    %>
    <script type="text/javascript">
        alert("<%= errorMessage %>");
    </script>
    <%
        }
    %>
</form>

        </div>
        <div class="toggle-box-left">
            <div class="toggle-panel toggle-left">
                <h1>Welcome!</h1>
                <p>Don't have an account?</p>
                <button class="btn register-btn" onclick="window.location.href='register.jsp'">Register</button>
            </div>
        </div>
    </div>
    <script src="js/login.js"></script>
</body>
</html>
