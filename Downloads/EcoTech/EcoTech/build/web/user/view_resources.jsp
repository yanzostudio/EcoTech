<%@ page session="true" %><%@ page import="com.ecotech.model.User" %>
<%@ page import="java.util.List" %>
<%@ page import="com.ecotech.model.Resources" %>
<%@ page import="com.ecotech.dao.ResourceUsageDAO" %>
<%
    // Retrieve user from session
    User user = (User) session.getAttribute("Customer");

    // If user is not found in session, redirect to login page
    if (user == null) {
        response.sendRedirect("../login.jsp");
        return;
    }
    
    ResourceUsageDAO dao = new ResourceUsageDAO();
        List<Resources> resourcesList = dao.getAllResources();  // Mengambil semua resource dari database
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>EcoTech - View Resources</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

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
                        <a class="collapse-item" href="view_resources.jsp">View Resources</a>
                        <a class="collapse-item" href="usage.jsp">View Usage</a>
                    </div>
                </div>
            </li><!-- Divider -->
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

                    <!-- Topbar Search -->
                    <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                aria-label="Search" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>
                    </form>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>
                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small"><%= user.getName() %></span>
                                
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="profile.jsp">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Profile
                                </a>
                                <a class="dropdown-item" href="settings.jsp">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Settings
                                </a>
                                <!--<a class="dropdown-item" href="#">
                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Activity Log
                                </a>-->
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
        <h1 class="h3 mb-0 text-gray-800">View Resources</h1>
    </div>

    <div class="container-fluid">
    <div class="row">
        <div class="col-lg-6">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Track Resources Consumption</h6>
                </div>
                <div class="card-body">
                    <section id="optimize-resources">
                        <p>Monitor your energy consumption to identify usage patterns and potential savings.</p>
                        <div class="flex-center m-3">
                            <form action="ResourceUsageServlet" method="post">
    <input type="hidden" name="action" value="insert">
    
    <!-- Select Resource Type -->
    <label for="resourcesId">Select Resource Type:</label>
    <select name="resourcesId" id="resourcesId" required>
        <option value="">--Select Resource--</option>
        <% for (Resources resource : resourcesList) { %>
            <option value="<%= resource.getResourcesId() %>"><%= resource.getResourcesName() %></option>
        <% } %>
    </select><br>
    
    <!-- Input Quantity -->
    <label for="quantity">Usage Amount:</label>
    <input type="number" name="quantity" id="quantity" required><br>

    <!-- Input Recorded Time -->
    <label for="recordedAt">Recorded At:</label>
    <input type="datetime-local" name="recordedAt" id="recordedAt" required><br>

    <button type="submit">Add Resource Usage</button>
</form>

                        </div>
                    </section>
                </div>
            </div>

            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Energy Audits</h6>
                </div>
                <div class="card-body">
                    <section id="audit-resources">
                        <p>Conduct assessments to identify inefficiencies and opportunities for energy savings.</p>
                        <button onclick="showAuditTips()">View Audit Tips</button>
                        <p id="auditTips" class="result"></p>
                    </section>
                </div>
            </div>

            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Consumption History</h6>
                </div>
                <div class="card-body">
                    <section id="consumption-history">
                        <p>View your past energy consumption records.</p>
                        <button onclick="showConsumptionHistory()">View History</button>
                        <div id="consumptionHistory" class="result"></div>
                    </section>
                </div>
            </div>
        </div>

        <div class="col-lg-6">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Energy Efficiency Tips</h6>
                </div>
                <div class="card-body">
                    <p>Learn about best practices to reduce your energy usage and save on costs. These tips help optimize resources effectively.</p>
                    <button onclick="showTips()">Get Tips</button><br>
                    <p id="efficiencyTips" class="result"></p>
                </div>
            </div>

            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Carbon Footprint Calculator</h6>
                </div>
                <div class="card-body">
                    <p>Calculate your carbon footprint based on your energy consumption and find ways to minimize it.</p>
                    <label for="carbonUsage">Energy Usage (kWh):</label>
                    <input type="number" id="carbonUsage" placeholder="Enter energy usage">
                    <button onclick="calculateCarbon()">Calculate Footprint</button><br>
                    <p id="carbonResult" class="result"></p>
                </div>
            </div>
        </div>
    </div>
</div>


</div>

                    <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; EcoTech - Sustainability Management System, All right reserved. 2024</span>
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

    
    <script>
        function trackResource() {
    const resourceType = document.getElementById("resourceType").value;
    const usageAmount = document.getElementById("usageAmount").value;

    if (!usageAmount || usageAmount <= 0) {
        document.getElementById("trackResult").innerText = "Please enter a valid usage amount.";
        return;
    }

    document.getElementById("trackResult").innerText = 
        `You have tracked ${usageAmount} units of ${resourceType}.`;
}

function showAuditTips() {
    const tips = `
        1. Inspect HVAC systems regularly.\n
        2. Seal air leaks in windows and doors.\n
        3. Replace old appliances with energy-efficient models.
    `;
    document.getElementById("auditTips").innerText = tips;
}

function showTips() {
    const tips = `
        - Use LED bulbs instead of incandescent ones.\n
        - Turn off appliances when not in use.\n
        - Install a programmable thermostat to save energy.
    `;
    document.getElementById("efficiencyTips").innerText = tips;
}

function calculateCarbon() {
    const energyUsage = document.getElementById("carbonUsage").value;

    if (!energyUsage || energyUsage <= 0) {
        document.getElementById("carbonResult").innerText = "Please enter a valid energy usage.";
        return;
    }

    // Example calculation: 1 kWh = 0.45 kg CO2
    const carbonFootprint = (energyUsage * 0.45).toFixed(2);
    document.getElementById("carbonResult").innerText = 
        `Your carbon footprint is approximately ${carbonFootprint} kg CO2.`;
}

function showConsumptionHistory() {
    // Make an AJAX request to fetch the history from the server.
    fetch('ConsumptionHistoryServlet') // Replace with your servlet URL
        .then(response => response.json())
        .then(data => {
            const historyDiv = document.getElementById('consumptionHistory');
            if (!data || data.length === 0) {
                historyDiv.innerHTML = "<p>No consumption history available.</p>";
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
            console.error('Error fetching consumption history:', error);
            document.getElementById('consumptionHistory').innerText = "Error fetching history.";
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
