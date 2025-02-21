package com.ecotech.controller;

import com.ecotech.model.Resources;
import com.ecotech.dao.ResourceUsageDAO;
import java.io.IOException;
import java.sql.SQLException;  // Tambahkan import SQLException
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/AdminAddResourceServlet")
public class AdminAddResourceServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String resourcesName = request.getParameter("resourcesName");
        String category = request.getParameter("category");
        String unit = request.getParameter("unit");

        Resources newResource = new Resources();
        newResource.setResourcesName(resourcesName);
        newResource.setCategory(category);
        newResource.setUnit(unit);

        ResourceUsageDAO dao = new ResourceUsageDAO();
        try {
            dao.addResource(newResource);  // Menambahkan resource baru ke database
            response.sendRedirect("index.jsp"); // Redirect ke dashboard admin setelah berhasil
        } catch (SQLException e) {
            e.printStackTrace(); // Cetak stack trace ke server log
            request.setAttribute("errorMessage", "Error occurred while adding resource: " + e.getMessage());
            request.getRequestDispatcher("/admin/error.jsp").forward(request, response); // Forward error to error.jsp
        }
    }
}
