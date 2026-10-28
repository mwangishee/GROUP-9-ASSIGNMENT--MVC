package com.group9.dao;

import com.group9.models.User;
import com.group9.util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {

    // Inserts a new user. Returns true if the row was saved.
    public boolean registerUser(User u) {
        String sql = "INSERT INTO users (first_name, last_name, email, password_hash, is_admin) "
                   + "VALUES (?, ?, ?, ?, ?)";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, u.getFirstName());
            ps.setString(2, u.getLastName());
            ps.setString(3, u.getEmail());
            ps.setString(4, u.getPassword());
            ps.setInt(5, "ADMIN".equalsIgnoreCase(u.getRole()) ? 1 : 0);

            return ps.executeUpdate() > 0;

        } catch (SQLException e) {
            // Also happens if the email already exists (it is UNIQUE)
            System.out.println("registerUser failed: " + e.getMessage());
            return false;
        }
    }

    // The first parameter is matched against the email column.
    // Returns the User if the login is correct, or null if not.
    public User loginUser(String username, String password) {
        String sql = "SELECT * FROM users WHERE email = ? AND password_hash = ?";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, username);
            ps.setString(2, password);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    User u = new User();
                    u.setUserId(rs.getInt("user_id"));
                    u.setFirstName(rs.getString("first_name"));
                    u.setLastName(rs.getString("last_name"));
                    u.setEmail(rs.getString("email"));
                    u.setPassword(rs.getString("password_hash"));
                    u.setRole(rs.getInt("is_admin") == 1 ? "ADMIN" : "CUSTOMER");
                    return u;
                }
            }

        } catch (SQLException e) {
            System.out.println("loginUser failed: " + e.getMessage());
        }
        return null;
    }
}
