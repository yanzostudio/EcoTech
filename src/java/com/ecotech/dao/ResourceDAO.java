package com.ecotech.dao;
import com.ecotech.model.Resources_Usage;
import com.ecotech.model.Resources;
import com.ecotech.util.DatabaseConnection;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ResourceDAO {

    private Connection connection;

    public ResourceDAO() {
        this.connection = DatabaseConnection.getConnection();
    }

    // Add a new resource
    public boolean addResource(Resources resource) {
        String query = "INSERT INTO ecotech.resources (resources_name, category, unit) VALUES (?, ?, ?)";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, resource.getResourcesName());
            stmt.setString(2, resource.getCategory());
            stmt.setString(3, resource.getUnit());
            int rowsAffected = stmt.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Get all resources
    public List<Resources> getAllResources() {
        List<Resources> resourcesList = new ArrayList<>();
        String query = "SELECT * FROM ecotech.resources";
        try (Statement stmt = connection.createStatement();
             ResultSet rs = stmt.executeQuery(query)) {
            while (rs.next()) {
                Resources resource = new Resources(
                        rs.getInt("resources_id"),
                        rs.getString("resources_name"),
                        rs.getString("category"),
                        rs.getString("unit")
                );
                resourcesList.add(resource);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return resourcesList;
    }

    // Get resource by ID
    public Resources getResourceById(int resourceId) {
        Resources resource = null;
        String query = "SELECT * FROM ecotech.resources WHERE resources_id = ?";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, resourceId);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    resource = new Resources(
                            rs.getInt("resources_id"),
                            rs.getString("resources_name"),
                            rs.getString("category"),
                            rs.getString("unit")
                    );
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return resource;
    }

    // Update resource
    public boolean updateResource(Resources resource) {
        String query = "UPDATE resources SET resources_name = ?, category = ?, unit = ? WHERE resources_id = ?";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, resource.getResourcesName());
            stmt.setString(2, resource.getCategory());
            stmt.setString(3, resource.getUnit());
            stmt.setInt(4, resource.getResourcesId());
            int rowsAffected = stmt.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Delete resource
    public boolean deleteResource(int resourceId) {
        String query = "DELETE FROM resources WHERE resources_id = ?";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, resourceId);
            int rowsAffected = stmt.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
