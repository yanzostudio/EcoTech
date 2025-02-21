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

@WebServlet("/addMetricRecord")
public class AddMetricRecordServlet extends HttpServlet {
    private MetricRecordDAO metricRecordDAO;

    @Override
    public void init() throws ServletException {
        super.init();
        // Setup JDBC Connection and DAO
            Connection connection = DatabaseConnection.getConnection();
            metricRecordDAO = new MetricRecordDAO(connection);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Mengambil parameter dari form
        double value = Double.parseDouble(request.getParameter("value"));
        Timestamp recordedAt = Timestamp.valueOf(request.getParameter("recordedAt"));
        int projectId = Integer.parseInt(request.getParameter("project_id"));
        int metricId = Integer.parseInt(request.getParameter("metric_id"));
        
        // Membuat objek MetricRecord
        Metric_Record record = new Metric_Record(0, value, recordedAt, projectId, metricId);

        try {
            // Menambah MetricRecord ke dalam database
            metricRecordDAO.addMetricRecord(record);
            // Redirect ke halaman list metric record setelah sukses
            response.sendRedirect("project-management.jsp");
        } catch (SQLException e) {
            throw new ServletException("Error adding MetricRecord", e);
        }
    }
}
