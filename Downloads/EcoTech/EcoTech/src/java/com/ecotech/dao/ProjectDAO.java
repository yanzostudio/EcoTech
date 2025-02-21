package com.ecotech.dao;

import com.ecotech.model.Project;
import com.ecotech.util.DatabaseConnection;
import java.sql.*;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProjectDAO {
    private Connection connection;

    public ProjectDAO(Connection connection) {
        this.connection = connection;
    }

    // Method untuk menambah project
    public void addProject(Project project) throws SQLException {
        String query = "INSERT INTO ecotech.project (project_name, dateLogged, user_id) VALUES (?, ?, ?)";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setString(1, project.getProjectName());
            ps.setDate(2, project.getDateLogged());
            ps.setInt(3, project.getUserId());
            ps.executeUpdate();
        }
    }

    // Method untuk mendapatkan project berdasarkan userId
    public List<Project> getProjectsByUserId(int userId) throws SQLException {
        List<Project> projects = new ArrayList<>();
        String query = "SELECT * FROM ecotech.project WHERE user_id = ?";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                projects.add(new Project(rs.getInt("project_id"), rs.getString("project_name"),
                        rs.getDate("dateLogged"), rs.getInt("user_id")));
            }
        }
        return projects;
    }
}
