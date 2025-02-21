<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EcoTech - Register</title>
    <link rel="stylesheet" href="css/loginstyle.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
    <div>
        <%
            // Display the error message if it exists
            String errorMessage = (String) request.getAttribute("error");
            if (errorMessage != null) {
        %>
        <div style="color: red;">
            <%= errorMessage %>
        </div>
        <%
            }
        %>

        <%
            // Display the success message if it exists
            String successMessage = (String) request.getAttribute("success");
            if (successMessage != null) {
        %>
        <div style="color: green;">
            <%= successMessage %>
        </div>
        <%
            }
        %>
    </div>

    <div class="container">
        <div class="form-box-register">
           <form action="CustomerAuthController" method="post">
    <input type="hidden" name="action" value="register">
    <div class="logo">
        <img src="img/ecotech.svg" />
    </div>
    <h1>Registration</h1>
    <div class="input-box-register">
        <input type="text" name="name" placeholder="Name" required>
        <i class='bx bxs-user'></i>
    </div>
    <div class="input-box-register">
        <input type="email" name="email" placeholder="Email" required>
        <i class='bx bxs-envelope'></i>
    </div>
    <div class="input-box-register">
        <input type="password" name="password" placeholder="Password" required>
        <i class='bx bx-lock-alt'></i>
    </div>
    <div class="input-box-register">
        <input type="text" name="contact" placeholder="Contact Number" required>
        <i class='bx bx-phone'></i>
    </div>
    <button type="submit" class="btn">Register</button>
</form>





            
            <div class="toggle-box-right">
            <div class="toggle-panel toggle-right">
                <h1>Welcome!</h1>
                <p>Already have an account?</p>
                <button class="btn login-btn" onclick="window.location.href='login.jsp'">Login</button>
            </div>
        </div>
        </div>
    </div>
</body>
</html>
