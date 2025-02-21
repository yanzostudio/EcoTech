<%@ page session="true" %>
<%@ page import="com.ecotech.model.User" %>
<%@ page import="com.ecotech.dao.UserDAO" %>
<%
    // Get the user ID from the request parameter
    String userIdParam = request.getParameter("id");
    int userId = Integer.parseInt(userIdParam);
    
    // Fetch user details from the database using the DAO
    UserDAO userDAO = new UserDAO();
    User user = userDAO.getUserById(userId);
    if (user == null) {
        response.sendRedirect("user-management.jsp"); // Redirect if no user found
        return;
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Edit User</title>
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body id="page-top">
<% 
        // Check if there's a success message to display
        String successMessage = (String) request.getAttribute("successMessage");
        if (successMessage != null) {
    %>
    <div class="alert alert-success" role="alert">
        <%= successMessage %>
    </div>
    <% } %>
    <div id="wrapper">
        <!-- Sidebar and Topbar here (same as in your current layout) -->

        <div id="content-wrapper" class="d-flex flex-column">
            <div id="content">
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
                    <!-- Topbar content -->
                </nav>

                <div class="container-fluid">
                    <h1 class="h3 mb-4 text-gray-800">Edit User</h1>

                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Edit User Details</h6>
                        </div>
                        <div class="card-body">
                            <form action="EditUserServlet" method="POST">
                                <input type="hidden" name="userId" value="<%= user.getId() %>">
                                <div class="form-group">
                                    <label for="name">Name</label>
                                    <input type="text" class="form-control" name="name" value="<%= user.getName() %>" required>
                                </div>
                                <div class="form-group">
                                    <label for="email">Email</label>
                                    <input type="email" class="form-control" name="email" value="<%= user.getEmail() %>" required>
                                </div>
                                <div class="form-group">
                                    <label for="role">Role</label>
                                    <select name="role" class="form-control" required>
                                        <option value="Admin" <%= user.getRole().equals("Admin") ? "selected" : "" %>>Admin</option>
                                        <option value="Customer" <%= user.getRole().equals("Customer") ? "selected" : "" %>>Customer</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="contact">Contact Number</label>
                                    <input type="text" class="form-control" name="contact" value="<%= user.getContact() %>" required>
                                </div>
                                <div style="text-align: center">
                                    <button type="button" class="btn btn-secondary" onclick="window.history.back();">Back</button>
                                    <button type="submit" class="btn btn-primary">Update</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer and other scripts -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="js/sb-admin-2.min.js"></script>
</body>
</html>
