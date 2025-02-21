<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add New Admin</title>
</head>
<body>
<div>
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
    </div>
    <!-- Display success or error messages -->
    <div>
        <%
            String successMessage = (String) request.getAttribute("success");
            String errorMessage = (String) request.getAttribute("error");
            if (successMessage != null) {
        %>
        <div style="color: green;">
            <%= successMessage %>
        </div>
        <%
            }
            if (errorMessage != null) {
        %>
        <div style="color: red;">
            <%= errorMessage %>
        </div>
        <%
            }
        %>
    </div>

    <form action="AdminController" method="post">
        <input type="hidden" name="action" value="addAdmin">
        <div>
            <label for="name">Name:</label>
            <input type="text" name="name" id="name" required>
        </div>
        <div>
            <label for="email">Email:</label>
            <input type="email" name="email" id="email" required>
        </div>
        <div>
            <label for="password">Password:</label>
            <input type="password" name="password" id="password" required>
        </div>
        <div>
            <label for="contact">Contact Number:</label>
            <input type="text" name="contact" id="contact" required>
        </div>
        <button type="submit" class="btn btn-success">Add Admin</button>
    </form>

</body>
</html>
