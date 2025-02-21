<%@ page import="com.ecotech.util.DatabaseConnection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Database Connection Test</title>
</head>
<body>
    <h2>Testing Database Connection</h2>
    <%
        try {
            // Attempt to get a connection
            DatabaseConnection.getConnection();
            out.println("<h3>Connection successful!</h3>");
        } catch (Exception e) {
            out.println("<h3>Failed to connect to the database: " + e.getMessage() + "</h3>");
        }
    %>
</body>
</html>
