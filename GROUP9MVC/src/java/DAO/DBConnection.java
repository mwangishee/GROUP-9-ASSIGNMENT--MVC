package com.group9.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

    // Database name must match the one in your SQL script
    private static final String URL =
            "jdbc:mysql://localhost:3306/ELECTRONICS?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";

    // CHANGE THESE to your own MySQL login
    private static final String USER = "root";
    private static final String PASSWORD = "YOUR_PASSWORD_HERE";

    // Opens and returns a new connection. The caller must close it
    // (the DAO classes do this with try-with-resources).
    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }

    // Quick test: right-click this file > Run File
    public static void main(String[] args) {
        try (Connection con = getConnection()) {
            System.out.println("Connected to ELECTRONICS successfully!");
        } catch (SQLException e) {
            System.out.println("Connection failed: " + e.getMessage());
        }
    }
}
