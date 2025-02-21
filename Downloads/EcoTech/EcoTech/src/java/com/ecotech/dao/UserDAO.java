package com.ecotech.dao;

import com.ecotech.model.User;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.ecotech.util.DatabaseConnection;




public class UserDAO {
    private Connection connection;
    // Constructor that accepts a Connection object
    public UserDAO(Connection connection) {
        this.connection = connection;
    }
    

    public UserDAO() {
        try {
            this.connection = DriverManager.getConnection("jdbc:derby://localhost:1527/EcoTechDB", "app", "app");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public boolean registerUser(User user) {
        String query = "INSERT INTO ecotech.USERS (USER_NAME, USER_EMAIL, USER_PASSWORD, USER_CONTACTNO, USER_ROLE) VALUES (?, ?, ?, ?, ?)";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, user.getName());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());
            stmt.setString(4, user.getContact());
            stmt.setString(5, user.getRole());

            int rowsInserted = stmt.executeUpdate();
            return rowsInserted > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Login user
    public User loginUser(String email, String password) {
    String query = "SELECT * FROM ECOTECH.USERS WHERE USER_EMAIL = ? AND USER_PASSWORD = ?";
    try (PreparedStatement stmt = connection.prepareStatement(query)) {
        stmt.setString(1, email);
        stmt.setString(2, password);

        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {
            //System.out.println("User found: " + rs.getString("USER_NAME"));
            return new User(
                    rs.getInt("USER_ID"),
                    rs.getString("USER_NAME"),
                    rs.getString("USER_EMAIL"),
                    rs.getString("USER_CONTACTNO"),
                    rs.getString("USER_ROLE")
            );
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    System.out.println("No user found for email: " + email);
    return null;
}


    // Check if email already exists
    public boolean emailExists(String email) {
        String query = "SELECT COUNT(*) FROM ecotech.USERS WHERE USER_EMAIL = ?";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, email);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return rs.getInt(1) > 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Method to fetch user by email
    public User getUserByEmail(String email) {
        String sql = "SELECT * FROM ecotech.USERS WHERE user_email = ?";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setString(1, email);
            ResultSet rs = stmt.executeQuery();
            
            if (rs.next()) {
                // Map the result to a User object
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                user.setContact(rs.getString("contact"));
                user.setRole(rs.getString("role"));
                
                return user;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return null; // User not found
    }
    
    
    // Method to delete a user by ID
    public boolean deleteUser(int userId) {
        String sql = "DELETE FROM ecotech.USERS WHERE user_id = ?";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setInt(1, userId);

            int rowsDeleted = stmt.executeUpdate();
            return rowsDeleted > 0; // Return true if a row was deleted
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false; // Return false if the deletion failed
    }

    
    public List<User> getUsersByRole(String role) {
    List<User> userList = new ArrayList<>();
    String sql = "SELECT * FROM ecotech.USERS WHERE user_role = ? ORDER BY user_id ASC"; // SQL for fetching users by role

    try (PreparedStatement stmt = connection.prepareStatement(sql)) {
        stmt.setString(1, role);  // Set the role filter
        ResultSet rs = stmt.executeQuery();
        while (rs.next()) {
            User user = new User();
            user.setId(rs.getInt("user_id"));
            user.setName(rs.getString("user_name"));
            user.setRole(rs.getString("user_role"));
            user.setEmail(rs.getString("user_email"));
            user.setContact(rs.getString("user_contactNo"));
            userList.add(user);
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return userList;
}

public List<User> getAllUsers() {
    List<User> userList = new ArrayList<>();
    String sql = "SELECT * FROM ecotech.USERS ORDER BY user_id ASC"; // SQL for fetching all users

    try (PreparedStatement stmt = connection.prepareStatement(sql);
         ResultSet rs = stmt.executeQuery()) {
        while (rs.next()) {
            User user = new User();
            user.setId(rs.getInt("user_id"));
            user.setName(rs.getString("user_name"));
            user.setRole(rs.getString("user_role"));
            user.setEmail(rs.getString("user_email"));
            user.setContact(rs.getString("user_contactNo"));
            userList.add(user);
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return userList;
}
// Method to return the database connection
    public Connection getConnection() {
        return this.connection;
    }

public boolean updateUser(User user) {
        String sql = "UPDATE ecotech.USERS SET user_name = ?, user_email = ?, user_role = ?, user_contactNo = ? WHERE user_id = ?";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, user.getName());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getRole());
            stmt.setString(4, user.getContact());
            stmt.setInt(5, user.getId());

            int rowsUpdated = stmt.executeUpdate();
            return rowsUpdated > 0; // Return true if update was successful
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false; // Return false if update failed
    }

    // Method to fetch user by ID (for editing purposes)
    public User getUserById(int userId) {
        User user = null;
        String sql = "SELECT * FROM ecotech.USERS WHERE user_id = ?";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setInt(1, userId);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                user = new User();
                user.setId(rs.getInt("user_id"));
                user.setName(rs.getString("user_name"));
                user.setEmail(rs.getString("user_email"));
                user.setRole(rs.getString("user_role"));
                user.setContact(rs.getString("user_contactNo"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    public boolean updatePassword(User user) {
    String sql = "UPDATE ecotech.USERS SET user_password = ? WHERE user_id = ?";
    try (PreparedStatement stmt = connection.prepareStatement(sql)) {
        stmt.setString(1, user.getPassword());
        stmt.setInt(2, user.getId());

        int rowsUpdated = stmt.executeUpdate();
        return rowsUpdated > 0; // Return true if password update was successful
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return false; // Return false if password update failed
}






}
