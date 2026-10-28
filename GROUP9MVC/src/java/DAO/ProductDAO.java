package com.group9.dao;

import com.group9.models.Product;
import com.group9.util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {

    // Joins categories so each Product gets its category NAME
    private static final String BASE_SELECT =
            "SELECT p.product_id, p.name, c.name AS category_name, "
          + "p.price, p.stock_quantity, p.image_url "
          + "FROM products p "
          + "JOIN categories c ON p.category_id = c.category_id ";

    // Returns every active product
    public List<Product> getAllProducts() {
        List<Product> products = new ArrayList<>();
        String sql = BASE_SELECT + "WHERE p.is_active = 1 ORDER BY p.product_id";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                products.add(mapRow(rs));
            }

        } catch (SQLException e) {
            System.out.println("getAllProducts failed: " + e.getMessage());
        }
        return products;
    }

    // Returns one product, or null if the id does not exist
    public Product getProductById(int id) {
        String sql = BASE_SELECT + "WHERE p.product_id = ?";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, id);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    return mapRow(rs);
                }
            }

        } catch (SQLException e) {
            System.out.println("getProductById failed: " + e.getMessage());
        }
        return null;
    }

    // Turns one database row into a Product object
    private Product mapRow(ResultSet rs) throws SQLException {
        Product p = new Product();
        p.setProductId(rs.getInt("product_id"));
        p.setName(rs.getString("name"));
        p.setCategory(rs.getString("category_name"));
        p.setPrice(rs.getDouble("price"));
        p.setStock(rs.getInt("stock_quantity"));
        p.setImageUrl(rs.getString("image_url"));
        return p;
    }
}
