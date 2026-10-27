<%-- 
    Document   : orders
    Created on : Oct 27, 2026, 4:10:28 PM
    Author     : SHEILA
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>My Orders - ShopSmart</title>
    <link rel="stylesheet" href="Style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body class="dashboard-body">
    <div class="dashboard-container">
        <aside class="sidebar">
            <div class="sidebar-header"><h2><i class="fas fa-shopping-cart"></i> ShopSmart</h2></div>
            <nav class="sidebar-menu">
                <a href="dashboard.jsp"><i class="fas fa-home"></i> Home / Products</a>
                <a href="profile.jsp"><i class="fas fa-user-circle"></i> My Profile</a>
                <a href="orders.jsp" class="active"><i class="fas fa-box-open"></i> My Orders</a>
                <a href="settings.jsp"><i class="fas fa-cog"></i> Settings</a>
                <a href="login.jsp" class="logout-link"><i class="fas fa-sign-out-alt"></i> Sign Out</a>
            </nav>
        </aside>

        <main class="main-content">
            <header class="top-header"><h1>My Orders</h1></header>
            
            <table class="orders-table">
                <thead>
                    <tr>
                        <th>Order ID</th>
                        <th>Product</th>
                        <th>Date</th>
                        <th>Status</th>
                        <th>Total</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>#ORD-001</td>
                        <td>Pro Laptop</td>
                        <td>Oct 25, 2026</td>
                        <td><span class="status-badge delivered">Delivered</span></td>
                        <td>KSh 65,000</td>
                    </tr>
                    <tr>
                        <td>#ORD-002</td>
                        <td>Wireless Headphones</td>
                        <td>Oct 27, 2026</td>
                        <td><span class="status-badge shipping">Shipping</span></td>
                        <td>KSh 3,500</td>
                    </tr>
                </tbody>
            </table>
        </main>
    </div>
</body>
</html>