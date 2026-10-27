<%-- 
    Document   : settings
    Created on : Oct 27, 2026, 4:11:24 PM
    Author     : SHEILA
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Settings - ShopSmart</title>
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
                <a href="orders.jsp"><i class="fas fa-box-open"></i> My Orders</a>
                <a href="settings.jsp" class="active"><i class="fas fa-cog"></i> Settings</a>
                <a href="login.jsp" class="logout-link"><i class="fas fa-sign-out-alt"></i> Sign Out</a>
            </nav>
        </aside>

        <main class="main-content">
            <header class="top-header"><h1>Settings</h1></header>
            
            <div class="settings-card">
                <h3>Appearance</h3>
                <div class="setting-row">
                    <span>Dark Mode</span>
                    <label class="switch">
                        <input type="checkbox" id="darkModeToggle">
                        <span class="slider round"></span>
                    </label>
                </div>
            </div>

            <div class="settings-card">
                <h3>Notifications</h3>
                <div class="setting-row">
                    <span>Email Notifications</span>
                    <label class="switch">
                        <input type="checkbox" checked>
                        <span class="slider round"></span>
                    </label>
                </div>
            </div>
        </main>
    </div>

    <script>
        const toggle = document.getElementById('darkModeToggle');
        const body = document.body;
        if (localStorage.getItem('theme') === 'dark') { body.classList.add('dark-mode'); toggle.checked = true; }
        toggle.addEventListener('change', () => {
            if (toggle.checked) { body.classList.add('dark-mode'); localStorage.setItem('theme', 'dark'); } 
            else { body.classList.remove('dark-mode'); localStorage.setItem('theme', 'light'); }
        });
    </script>
</body>
</html>
