<%-- 
    Document   : profile
    Created on : Oct 27, 2026, 4:09:29 PM
    Author     : SHEILA
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>My Profile - ShopSmart</title>
    <link rel="stylesheet" href="Style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body class="dashboard-body">
    <div class="dashboard-container">
        <aside class="sidebar">
            <div class="sidebar-header"><h2><i class="fas fa-shopping-cart"></i> ShopSmart</h2></div>
            <nav class="sidebar-menu">
                <a href="dashboard.jsp"><i class="fas fa-home"></i> Home / Products</a>
                <a href="profile.jsp" class="active"><i class="fas fa-user-circle"></i> My Profile</a>
                <a href="orders.jsp"><i class="fas fa-box-open"></i> My Orders</a>
                <a href="settings.jsp"><i class="fas fa-cog"></i> Settings</a>
                <a href="login.jsp" class="logout-link"><i class="fas fa-sign-out-alt"></i> Sign Out</a>
            </nav>
        </aside>

        <!-- MAIN CONTENT -->
        <main class="main-content">
            <header class="top-header"><h1>My Profile</h1></header>
            
            <div class="profile-card">
                <div class="profile-pic-container">
                    <input type="file" id="fileInput" style="display: none;" accept="image/*">
                    <i class="fas fa-user-circle profile-pic-icon"></i>
                    <button class="btn-add-cart" style="margin-top: 15px; width: auto; padding: 8px 15px;">Change Picture</button>
                </div>
                <div class="profile-details">
                    <div class="detail-row"><label>Username:</label> <span>Sheila</span></div>
                    <div class="detail-row"><label>Email:</label> <span>sheila9@gmail.com</span></div>
                    <div class="detail-row"><label>Member Since:</label> <span>October 2026</span></div>
                </div>
            </div>
        </main>
    </div>
</body>
</html>