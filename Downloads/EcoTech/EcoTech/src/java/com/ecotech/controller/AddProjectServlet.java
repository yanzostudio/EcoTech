package com.ecotech.controller;

import com.ecotech.dao.MetricRecordDAO;
import com.ecotech.dao.ProjectDAO;
import com.ecotech.dao.SustainabilityMetricsDAO;
import com.ecotech.model.Metric_Record;
import com.ecotech.model.Project;
import com.ecotech.model.Sustainability_Metrics;
import com.ecotech.util.DatabaseConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.*;

public class AddProjectServlet extends HttpServlet {
    private ProjectDAO projectDAO;

    @Override
    public void init() throws ServletException {
        super.init();
        // Setup JDBC Connection and DAO
        Connection connection = DatabaseConnection.getConnection();
        projectDAO = new ProjectDAO(connection);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String projectName = request.getParameter("project_name");
        Date dateLogged = Date.valueOf(request.getParameter("dateLogged"));
        int userId = Integer.parseInt(request.getParameter("user_id"));
        
        Project project = new Project(0, projectName, dateLogged, userId);
        try {
            projectDAO.addProject(project);
            response.sendRedirect("project-management.jsp");
        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }
}