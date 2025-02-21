package com.ecotech.dao;

import com.ecotech.util.DatabaseConnection;
import com.ecotech.model.Resources;
import com.ecotech.model.Resources_Usage;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ResourceUsageDAO {

    // Metode untuk menyimpan penggunaan resource
    public void insertResourceUsage(Resources_Usage usage) throws SQLException {
        String sql = "INSERT INTO resource_usage (quantity, recorded_at, user_id, resources_id) VALUES (?, ?, ?, ?)";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setDouble(1, usage.getQuantity());
            stmt.setTimestamp(2, usage.getRecordedAt());
            stmt.setInt(3, usage.getUserId());
            stmt.setInt(4, usage.getResourcesId());

            stmt.executeUpdate();
        }
    }
    
    public void addResource(Resources resource) throws SQLException {
        String sql = "INSERT INTO resources (resources_name, category, unit) VALUES (?, ?, ?)";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, resource.getResourcesName());
            stmt.setString(2, resource.getCategory());
            stmt.setString(3, resource.getUnit());
            
            stmt.executeUpdate();
        }
    }
    
    public List<Resources> getAllResources() {
        List<Resources> resourcesList = new ArrayList<>();
        String sql = "SELECT * FROM resources"; // Query untuk mengambil semua resources

        try (Connection conn = DatabaseConnection.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                Resources resource = new Resources();
                resource.setResourcesId(rs.getInt("resources_id"));
                resource.setResourcesName(rs.getString("resources_name"));
                resource.setCategory(rs.getString("category"));
                resource.setUnit(rs.getString("unit"));
                resourcesList.add(resource);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return resourcesList;
    }
}
