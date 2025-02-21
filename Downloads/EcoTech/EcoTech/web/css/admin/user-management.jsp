<%@ page session="true" %>
<%@ page import="java.util.List" %>
<%@ page import="com.ecotech.model.User" %>

<%
    // Semak jika admin telah login melalui sesi
    User admin = (User) session.getAttribute("Admin");
    if (admin == null) {
        // Jika admin tidak ada dalam sesi, arahkan ke halaman login
        response.sendRedirect("login.jsp");
        return;
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <style>
        #myTable td:nth-child(2), #myTable th:nth-child(2) {
  display: none;
}

    </style>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>EcoTech - User Management</title>
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
</head>

<body id="page-top">
<% 
        String successMessage = (String) request.getAttribute("success");
        String errorMessage = (String) request.getAttribute("error");

        if (successMessage != null) {
    %>
        <script type="text/javascript">
            alert("<%= successMessage %>");
        </script>
    <%
        } else if (errorMessage != null) {
    %>
        <script type="text/javascript">
            alert("<%= errorMessage %>");
        </script>
    <%
        }
    %>
    <div id="wrapper">
        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.jsp">
                <img src="../img/EcoTech Logo.png" alt="Logo" width="130" height="28">
                <div><p class="sidebar-brand-text" style="font-size: 10px;">Admin Panel</p></div>
            </a>
            <hr class="sidebar-divider my-0">
            <li class="nav-item active">
                <a class="nav-link" href="index.jsp">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span>
                </a>
            </li>
            <hr class="sidebar-divider">
            <div class="sidebar-heading"> Features </div>
            <!-- User Managemenr -->
            <li class="nav-item">
                <a class="nav-link" href="user-management.jsp">
                    <i class="fas fa-fw fa-user"></i>
                    <span>User Management</span>
                </a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link" href="manage_resources.jsp">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>Resources Usage Management</span>
                </a>
            </li>
            
            <!-- moitoring maintencne -->
            <li class="nav-item">
                <a class="nav-link" href="project-management.jsp">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>Project Management</span>
                </a>
            </li>
            <!-- Divider -->
            <hr class="sidebar-divider">
        </ul>

        <div id="content-wrapper" class="d-flex flex-column">
            <div id="content">
                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small"><%= admin.getName() %></span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="profile.jsp">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Profile
                                </a>
                                <a class="dropdown-item" href="settings.jsp">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i> Settings
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i> Logout
                                </a>
                            </div>
                        </li>
                    </ul>
                </nav>

                <div class="container-fluid">
                    
                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">User Management</h1>
                    </div>
                    
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Customer & Administrator Accounts</h6>
                        </div>
                        <div class="card-body">
                            <div style="justify-content: flex-end;">
                                <button type="button" class="btn btn-success mb-2 right" data-toggle="modal" data-target="#addAdminModal">Add Admin</button>
                            
                            <div class="form-group">
                            <!-- Dropdown for selecting the role to filter by -->
                            <form method="GET" action="AdminListServlet">
                                <label for="roleFilter">Filter by Role:</label>
                                <select name="roleFilter" id="roleFilter" class="form-control" style="width: 200px;">
                                    <option value="">All Users</option>
                                    <option value="Admin">Admin</option>
                                    <option value="Customer">Customer</option>
                                </select>
                                <button type="submit" class="btn btn-primary mt-2">Filter</button>
                            </form>
                        </div>

                        <!-- User List Table -->
                        <table class="table table-bordered" id="myTable">
                            <thead class="thead-light">
                                <tr>
                                    <th>No.</th>
                                    <th>User ID</th>
                                    <th>Name</th>
                                    <th>Role</th>
                                    <th>Email</th>
                                    <th>Contact Number</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% 
                                    List<User> userList = (List<User>) request.getAttribute("userList");
                                    if (userList != null && !userList.isEmpty()) {
                                        int count = 1;
                                        for (User user : userList) {
                                %>
                                    <tr>
                                        <td><%= count++ %></td>  <!-- Serial number -->
                                        <td><%= user.getId() %></td>
                                        <td><%= user.getName() %></td>
                                        <td><%= user.getRole() %></td>
                                        <td><%= user.getEmail() %></td>
                                        <td><%= user.getContact() %></td>
                                        <td>
    <a href="editUser.jsp?id=<%= user.getId() %>" class="btn btn-primary btn-sm">Edit</a>
    <a href="deleteUser?id=<%= user.getId() %>" class="btn btn-danger btn-sm">Delete</a>
</td>
                                    </tr>
                                <% 
                                        }
                                    } else {
                                %>
                                    <tr>
                                        <td colspan="6" class="text-center">No Users Found</td>
                                    </tr>
                                <% } %>
                            </tbody>
                        </table>


                        </div>
                    </div>
                </div>
            </div>

            <!-- Add Admin Modal -->
            <div class="modal fade" id="addAdminModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Add Admin</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <!-- Form to Add Admin -->
                            <form action="AdministratorAuthController" method="POST">
    <input type="hidden" name="action" value="register">
    <div class="form-group">
        <label for="adminName">Name</label>
        <input type="text" class="form-control" id="name" name="name" required>
    </div>
    <div class="form-group">
        <label for="adminEmail">Email</label>
        <input type="email" class="form-control" id="email" name="email" required>
    </div>
    <div class="form-group">
        <label for="adminPassword">Password</label>
        <input type="password" class="form-control" id="password" name="password" required>
    </div>
    <div class="form-group">
        <label for="adminContact">Contact Number</label>
        <input type="text" name="contact" id="contact" class="form-control" required>
    </div>
    <button type="submit" class="btn btn-primary">Add Admin</button>
</form>

                        </div>
                    </div>
                </div>
            </div>

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; EcoTech - Sustainability Management System, All right reserved. 2024</span>
                    </div>
                </div>
            </footer>

        </div>
    </div>

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="AdminLogoutServlet">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="js/sb-admin-2.min.js"></script>
    <script src="js/script.js"></script>

</body>
</html>
