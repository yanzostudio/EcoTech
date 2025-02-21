package com.ecotech.dao;

import com.ecotech.model.Metric_Record;
import com.ecotech.util.DatabaseConnection;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import java.sql.*;

import java.sql.*;
import java.util.*;

public class MetricRecordDAO {
    private Connection connection;

    public MetricRecordDAO(Connection connection) {
        this.connection = connection;
    }

    // Method untuk menambah metric record
    public void addMetricRecord(Metric_Record record) throws SQLException {
        String query = "INSERT INTO ecotech.metric_record (value, recordedAt, project_id, metric_id) VALUES (?, ?, ?, ?)";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setDouble(1, record.getValue());
            ps.setTimestamp(2, record.getRecordedAt());
            ps.setInt(3, record.getProjectId());
            ps.setInt(4, record.getMetricId());
            ps.executeUpdate();
        }
    }

    // Method untuk mendapatkan metric record berdasarkan projectId
    public List<Metric_Record> getMetricRecordsByProjectId(int projectId) throws SQLException {
        List<Metric_Record> records = new ArrayList<>();
        String query = "SELECT * FROM metric_record WHERE project_id = ?";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, projectId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                records.add(new Metric_Record(rs.getInt("record_id"), rs.getDouble("value"),
                        rs.getTimestamp("recordedAt"), rs.getInt("project_id"), rs.getInt("metric_id")));
            }
        }
        return records;
    }
}
