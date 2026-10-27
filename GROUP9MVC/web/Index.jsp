<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - ShopSmart</title>
    <link rel="stylesheet" href="Style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body class="auth-page">
    <div class="auth-container">
        <!-- Left Side - Form -->
        <div class="auth-form-container">
            <div class="auth-logo">
                <h1><i class="fas fa-shopping-cart"></i> ShopSmart</h1>
                <p>Welcome back! Please login to your account</p>
            </div>
            
            <form action="LoginServlet" method="post" class="auth-form">
                <div class="form-group">
                    <label for="email"><i class="fas fa-envelope"></i> Email Address</label>
                    <input type="email" id="email" name="email" placeholder="Enter your email" required>
                </div>
                
                <div class="form-group">
                    <label for="password"><i class="fas fa-lock"></i> Password</label>
                    <input type="password" id="password" name="password" placeholder="Enter your password" required>
                </div>
                
                <div class="form-options">
                    <label class="remember-me">
                        <input type="checkbox" name="remember">
                        <span>Remember me</span>
                    </label>
                    <a href="#" class="forgot-password">Forgot Password?</a>
                </div>
                
                <button type="submit" class="btn-primary">
                    <i class="fas fa-sign-in-alt"></i> Login
                </button>
            </form>
            
            <div class="auth-footer">
                <p>Don't have an account? <a href="register.jsp" class="signup-link">Sign up here</a></p>
            </div>
        </div>
        
        <!-- Right Side - Image/Info -->
        <div class="auth-info">
            <div class="auth-info-content">
                <h2>Shop Smarter, Live Better</h2>
                <p>Access exclusive deals, track your orders, and enjoy a personalized shopping experience.</p>
                <ul class="auth-features">
                    <li><i class="fas fa-check-circle"></i> Fast & Secure Checkout</li>
                    <li><i class="fas fa-check-circle"></i> Order Tracking</li>
                    <li><i class="fas fa-check-circle"></i> Exclusive Member Deals</li>
                    <li><i class="fas fa-check-circle"></i> 24/7 Customer Support</li>
                </ul>
            </div>
        </div>
    </div>
</body>
</html>