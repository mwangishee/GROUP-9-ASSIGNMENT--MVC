<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up - ShopSmart</title>
    <link rel="stylesheet" href="Style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body class="auth-page">
    <div class="auth-container">
        <!-- Left Side - Form -->
        <div class="auth-form-container">
            <div class="auth-logo">
                <h1><i class="fas fa-shopping-cart"></i> ShopSmart</h1>
                <p>Create your account and start shopping</p>
            </div>
            
            <form action="RegisterServlet" method="post" class="auth-form" id="registerForm">
                <div class="form-group">
                    <label for="username"><i class="fas fa-user"></i> Username</label>
                    <input type="text" id="username" name="username" placeholder="Choose a username" required>
                    <small class="field-hint">Jdoe...</small>
                </div>
                
                <div class="form-group">
                    <label for="email"><i class="fas fa-envelope"></i> Email Address</label>
                    <input type="email" id="email" name="email" placeholder="your.email@example.com" required>
                    <small class="field-hint">doe1@gmail.com</small>
                </div>
                
                <div class="form-group">
                    <label for="password"><i class="fas fa-lock"></i> Password</label>
                    <input type="password" id="password" name="password" placeholder="Create a password" required minlength="8">
                    <small class="field-hint">At least 8 characters</small>
                </div>
                
                <div class="form-group">
                    <label for="confirmPassword"><i class="fas fa-lock"></i> Confirm Password</label>
                    <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Confirm your password" required>
                </div>
                
                <div class="form-options">
                    <label class="remember-me">
                        <input type="checkbox" name="terms" required>
                        <span>I agree to the <a href="#">Terms & Conditions</a></span>
                    </label>
                </div>
                
                <button type="submit" class="btn-primary">
                    <i class="fas fa-user-plus"></i> Create Account
                </button>
            </form>
            
            <div class="auth-footer">
                <p>Already have an account? <a href="login.jsp" class="signup-link">Login here</a></p>
            </div>
        </div>
        
        
        <div class="auth-info">
            <div class="auth-info-content">
                <h2>Happy to serve you Smartly😉</h2>
                <p>Get access to exclusive deals and a seamless shopping experience.</p>
                <ul class="auth-features">
                    <li><i class="fas fa-gift"></i> Get access to all electronics!✅</li>
                    <li><i class="fas fa-money-bill-wave"></i> Affordable pricing on all products😃</li>
                    <li><i class="fas fa-truck"></i> Easy shipping and delivery process✈</li>
                    <li><i class="fas fa-headset"></i> Dedicated Support Team🤝🏼</li>
                </ul>
            </div>
        </div>
    </div>
    
    <script>
       
        document.getElementById('registerForm').addEventListener('submit', function(e) {
            const password = document.getElementById('password').value;
            const confirmPassword = document.getElementById('confirmPassword').value;
            const email = document.getElementById('email').value;
                
            const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailRegex.test(email)) {
                e.preventDefault();
                alert('Please enter a valid email address');
                return false;
            }
            
            if (password.length < 8) {
                e.preventDefault();
                alert('Password must be at least 8 characters long');
                return false;
            }
            
            if (password !== confirmPassword) {
                e.preventDefault();
                alert('Passwords do not match!');
                return false;
            }
        });
    </script>
</body>
</html>