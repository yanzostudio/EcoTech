package com.ecotech.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    private static Connection conn;

    // Static initialization block or field
    public static Connection getConnection() {
    if (conn == null) {
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");  // Pastikan driver sudah di-load
            conn = DriverManager.getConnection("jdbc:derby://localhost:1527/EcoTechDB", "app", "app"); // Gantilah dengan URL database kamu
            System.out.println("Database connected successfully!");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();  // Handle exceptions
            throw new RuntimeException("Database connection failed!", e);
        }
    }
    return conn;
}

}
