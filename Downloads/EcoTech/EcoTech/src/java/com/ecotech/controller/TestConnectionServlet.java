package com.ecotech.controller;

import com.ecotech.util.DatabaseConnection;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class TestConnectionServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Attempt to get a connection
            DatabaseConnection.getConnection();
            response.getWriter().write("Connection successful!");
        } catch (Exception e) {
            response.getWriter().write("Failed to connect to the database: " + e.getMessage());
        }
    }
}
