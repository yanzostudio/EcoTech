package com.ecotech.dao;

import com.ecotech.model.Sustainability_Metrics;
import com.ecotech.util.DatabaseConnection;
import java.sql.*;

import java.sql.*;

import java.sql.*;
import java.util.*;

public class SustainabilityMetricsDAO {
    private Connection connection;

    public SustainabilityMetricsDAO(Connection connection) {
        this.connection = connection;
    }

    // Method untuk mengambil semua sustainability metrics
    public List<Sustainability_Metrics> getAllMetrics() throws SQLException {
        List<Sustainability_Metrics> metrics = new ArrayList<>();
        String query = "SELECT * FROM ecotech.sustainability_metrics";
        try (Statement stmt = connection.createStatement();
             ResultSet rs = stmt.executeQuery(query)) {
            while (rs.next()) {
                metrics.add(new Sustainability_Metrics(rs.getInt("metric_id"), rs.getString("metric_name"),
                        rs.getString("unit")));
            }
        }
        return metrics;
    }
}
