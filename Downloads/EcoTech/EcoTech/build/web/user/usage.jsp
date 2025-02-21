<%@ page session="true" %><%@ page import="com.ecotech.model.User" %>
<%
    // Retrieve user from session
    User user = (User) session.getAttribute("Customer");

    // If user is not found in session, redirect to login page
    if (user == null) {
        response.sendRedirect("../login.jsp");
        return;
    }
%>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>EcoTech - Resource Usage Tracking</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.jsp">
                <img src="../img/EcoTech Logo.png" alt="Logo" width="130" height="28">
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="index.jsp">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Features
            </div>

            <!-- Sustainability -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-leaf"></i>
                    <span>Sustainability</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="project-management.jsp">Project Record Keeping</a>
                        <a class="collapse-item" href="usage.jsp">Resource Usage Tracking</a>
                    </div>
                </div>
            </li>
            <hr class="sidebar-divider">
        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small"><%= user.getName() %></span>
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="profile.jsp">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Profile
                                </a>
                                <a class="dropdown-item" href="settings.jsp">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Settings
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">
                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Resources Usage Tracking</h1>
                    </div>

        <!-- Card for logging resource usage -->
        <div class="card mb-4">
            <div class="card-header">
                <h4>Log Resource Usage</h4>
            </div>
            <div class="card-body">
                <form action="ResourceUsageServlet" method="POST">
                    <div class="mb-3">
                        <label for="resource" class="form-label">Resource</label>
                        <select id="resource" class="form-select" name="resource_id" required>
                            <option value="">Select Resource</option>
                            <!-- Optionally, dynamically load resources from the database -->
                            <option value="1">Electricity</option>
                            <option value="2">Water</option>
                            <option value="3">Gas</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="quantity" class="form-label">Quantity</label>
                        <input type="number" class="form-control" id="quantity" name="quantity" required>
                    </div>
                    <div class="mb-3">
                        <label for="dateRecorded" class="form-label">Date Recorded</label>
                        <input type="datetime-local" class="form-control" id="dateRecorded" name="date_recorded" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>

        <!-- Card for editing resource usage -->
        <div class="card mb-4">
            <div class="card-header">
                <h4>Edit Resource Usage</h4>
            </div>
            <div class="card-body">
                <form action="EditResourceUsageServlet" method="POST">
                    <div class="mb-3">
                        <label for="usageID" class="form-label">Usage ID</label>
                        <input type="number" class="form-control" id="usageID" name="usage_id" required>
                    </div>
                    <div class="mb-3">
                        <label for="editQuantity" class="form-label">New Quantity</label>
                        <input type="number" class="form-control" id="editQuantity" name="new_quantity" required>
                    </div>
                    <div class="mb-3">
                        <label for="editDateRecorded" class="form-label">New Date Recorded</label>
                        <input type="datetime-local" class="form-control" id="editDateRecorded" name="new_date_recorded" required>
                    </div>
                    <button type="submit" class="btn btn-warning">Update</button>
                </form>
            </div>
        </div>

        <!-- Card for displaying resource usage history -->
        <div class="card">
            <div class="card-header">
                <h4>Your Resource Usage History</h4>
            </div>
            <div class="card-body">
                <!-- Table to show previous usage -->
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Resource</th>
                            <th>Quantity</th>
                            <th>Date Recorded</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Example data, this will be dynamically populated with the user's data -->
                        <tr>
                            <td>1</td>
                            <td>Electricity</td>
                            <td>100 kWh</td>
                            <td>2025-02-21 10:00</td>
                            <td>
                                <a href="#" class="btn btn-info">Edit</a>
                            </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Water</td>
                            <td>50 Liters</td>
                            <td>2025-02-20 08:00</td>
                            <td>
                                <a href="#" class="btn btn-info">Edit</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
                </div>

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; EcoTech - Sustainability Management System, All rights reserved. 2024</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal -->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="logoutModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="logoutModalLabel">Ready to Leave?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <a class="btn btn-primary" href="CustomerLogoutServlet">Logout</a> <!-- Link to logout.jsp -->
            </div>
        </div>
    </div>
</div>


    <!-- Scripts -->
    <script>
        function showSmartIrrigationTips() {
            const tips = `
                1. Use weather-based controllers.\n
                2. Install moisture sensors.\n
                3. Schedule watering during early mornings or late evenings to reduce evaporation.
            `;
            document.getElementById("smartIrrigationTips").innerText = tips;
        }

        function showWaterRecyclingTips() {
            const tips = `
                1. Collect rainwater for irrigation.\n
                2. Use greywater for landscaping.\n
                3. Install water-efficient appliances.
            `;
            document.getElementById("waterRecyclingTips").innerText = tips;
        }

        function showIrrigationHistory() {
            // Make an AJAX request to fetch the history from the server.
            fetch('IrrigationHistoryServlet') // Replace with your servlet URL
                .then(response => response.json())
                .then(data => {
                    const historyDiv = document.getElementById('irrigationHistory');
                    if (!data || data.length === 0) {
                        historyDiv.innerHTML = "<p>No irrigation history available.</p>";
                        return;
                    }

                    const table = document.createElement('table');
                    table.border = '1';
                    const headerRow = table.insertRow();
                    for (const key in data[0]) {  // Dynamically create headers
                        const headerCell = headerRow.insertCell();
                        headerCell.textContent = key;
                    }

                    data.forEach(item => {
                        const row = table.insertRow();
                        for (const key in item) {
                            const cell = row.insertCell();
                            cell.textContent = item[key];
                        }
                    });
                    historyDiv.innerHTML = ""; // Clear previous content.
                    historyDiv.appendChild(table);
                })
                .catch(error => {
                    console.error('Error fetching irrigation history:', error);
                    document.getElementById('irrigationHistory').innerText = "Error fetching history.";
                });
        }
    </script>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/chart-area-demo.js"></script>
    <script src="js/demo/chart-pie-demo.js"></script>

</body>

</html>
