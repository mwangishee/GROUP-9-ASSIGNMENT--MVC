package com.group9.dao;

import com.group9.models.CartItem;
import com.group9.models.Order;
import com.group9.util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class OrderDAO {

    // Saves the order, its items, and reduces stock - all or nothing.
    // Returns true if everything was saved.
    public boolean saveOrder(Order o) {
        String orderSql = "INSERT INTO orders (user_id, status, total_amount) VALUES (?, ?, ?)";
        String itemSql = "INSERT INTO order_items (order_id, product_id, quantity, unit_price, subtotal) "
                       + "VALUES (?, ?, ?, ?, ?)";
        String stockSql = "UPDATE products SET stock_quantity = stock_quantity - ? "
                        + "WHERE product_id = ? AND stock_quantity >= ?";

        Connection con = null;
        try {
            con = DBConnection.getConnection();
            con.setAutoCommit(false);   // start a transaction

            // 1. Insert the order row and get its new id
            int newOrderId;
            try (PreparedStatement ps = con.prepareStatement(orderSql, Statement.RETURN_GENERATED_KEYS)) {
                ps.setInt(1, o.getUserId());
                ps.setString(2, o.getStatus() == null ? "PENDING" : o.getStatus());
                ps.setDouble(3, o.getTotalAmount());
                ps.executeUpdate();

                try (ResultSet keys = ps.getGeneratedKeys()) {
                    if (!keys.next()) {
                        con.rollback();
                        return false;
                    }
                    newOrderId = keys.getInt(1);
                }
            }

            // 2. Insert each cart item and reduce the product's stock
            try (PreparedStatement itemPs = con.prepareStatement(itemSql);
                 PreparedStatement stockPs = con.prepareStatement(stockSql)) {

                for (CartItem item : o.getItems()) {
                    itemPs.setInt(1, newOrderId);
                    itemPs.setInt(2, item.getProductId());
                    itemPs.setInt(3, item.getQuantity());
                    itemPs.setDouble(4, item.getPrice());
                    itemPs.setDouble(5, item.getSubtotal());
                    itemPs.executeUpdate();

                    stockPs.setInt(1, item.getQuantity());
                    stockPs.setInt(2, item.getProductId());
                    stockPs.setInt(3, item.getQuantity());
                    if (stockPs.executeUpdate() == 0) {
                        // Not enough stock: undo everything
                        con.rollback();
                        System.out.println("saveOrder: not enough stock for product " + item.getProductId());
                        return false;
                    }
                }
            }

            con.commit();
            o.setOrderId(newOrderId);
            return true;

        } catch (SQLException e) {
            System.out.println("saveOrder failed: " + e.getMessage());
            if (con != null) {
                try {
                    con.rollback();
                } catch (SQLException ex) {
                    System.out.println("Rollback failed: " + ex.getMessage());
                }
            }
            return false;

        } finally {
            if (con != null) {
                try {
                    con.setAutoCommit(true);
                    con.close();
                } catch (SQLException ignored) {
                }
            }
        }
    }
}
