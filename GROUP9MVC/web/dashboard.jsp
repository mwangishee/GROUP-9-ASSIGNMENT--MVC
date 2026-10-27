<%-- 
    Document   : dashboard
    Created on : Oct 27, 2026, 5:40:05 PM
    Author     : SHEILA
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - ShopSmart</title>
    <link rel="stylesheet" href="Style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body class="dashboard-body">
    
    <div class="dashboard-container">
        <aside class="sidebar">
            <div class="sidebar-header">
                <h2><i class="fas fa-shopping-cart"></i> ShopSmart</h2>
            </div>
            
            <nav class="sidebar-menu">
                <a href="dashboard.jsp" class="active"><i class="fas fa-home"></i> Home / Products</a>
                <a href="profile.jsp"><i class="fas fa-user-circle"></i> My Profile</a>
                <a href="orders.jsp"><i class="fas fa-box-open"></i> My Orders</a>
                <a href="settings.jsp"><i class="fas fa-cog"></i> Settings</a>
                
                <div class="theme-toggle-container">
                    <span><i class="fas fa-moon"></i> Dark Mode</span>
                    <label class="switch">
                        <input type="checkbox" id="darkModeToggle">
                        <span class="slider round"></span>
                    </label>
                </div>

                <a href="login.jsp" class="logout-link"><i class="fas fa-sign-out-alt"></i> Sign Out</a>
            </nav>
        </aside>

        <main class="main-content">
            <!-- Top Header -->
            <header class="top-header">
                <h1>Welcome back, <span class="user-name">Sheila!</span> 👋</h1>
                <div class="header-actions">
                    <div class="search-bar">
                        <i class="fas fa-search"></i>
                        <input type="text" placeholder="Search products...">
                    </div>
                    <a href="cart.jsp" class="cart-icon-link">
                    <div class="cart-icon">
                        <i class="fas fa-shopping-cart"></i>
                    </div>
                    </a>
                </div>
            </header>
            
            <section class="products-section">
                <div class="section-header">
                    <h2>Featured Electronics</h2>
                    <span class="badge-deal">Great Deals</span>
                </div>

                <div class="product-grid">
                    <!-- Product 1 -->
                    <div class="product-card">
                        <div class="product-image" style="background-image: url('https://images.unsplash.com/photo-1496181133206-80ce9b88a853?w=500&q=80');"></div>
                        <div class="product-info">
                            <h3>Pro Laptop</h3>
                            <p class="description">Powerful laptop for work and study.</p>
                            <div class="price-row">
                                <span class="price">KSh 65,000</span>
                                <span class="stock">In stock</span>
                            </div>
                            <button class="btn-add-cart" onclick="addToCart('Pro Laptop', 65000)">
                            <i class="fas fa-cart-plus"></i> Add to Cart
                            </button>
                        </div>
                    </div>

                    <!-- Product 2 -->
                    <div class="product-card">
                        <div class="product-image" style="background-image: url('https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=500&q=80');"></div>
                        <div class="product-info">
                            <h3>Smartphone</h3>
                            <p class="description">Stay connected wherever you go.</p>
                            <div class="price-row">
                                <span class="price">KSh 25,000</span>
                                <span class="stock">In stock</span>
                            </div>
                            <button class="btn-add-cart" onclick="addToCart('Smart Smartphone', 25000)">
                            <i class="fas fa-cart-plus"></i> Add to Cart
                            </button>
                        </div>
                    </div>

                    <!-- Product 3 -->
                    <div class="product-card">
                        <div class="product-image" style="background-image: url('https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=500&q=80');"></div>
                        <div class="product-info">
                            <h3>Wireless Headphones</h3>
                            <p class="description">Enjoy your favourite music.</p>
                            <div class="price-row">
                                <span class="price">KSh 3,500</span>
                                <span class="stock">In stock</span>
                            </div>
                          <button class="btn-add-cart" onclick="addToCart('Wireless Headphones', 3500)">
                             <i class="fas fa-cart-plus"></i> Add to Cart
                          </button>
                        </div>
                    </div>

                    <!-- Product 4 -->
                    <div class="product-card">
                        <div class="product-image" style="background-image: url('https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=500&q=80');"></div>
                        <div class="product-info">
                            <h3>Smartwatch</h3>
                            <p class="description">A smart companion for everyday life.</p>
                            <div class="price-row">
                                <span class="price">KSh 5,000</span>
                                <span class="stock">In stock</span>
                            </div>
                            <button class="btn-add-cart" onclick="addToCart('Smartwatch', 5000)">
                                <i class="fas fa-cart-plus"></i> Add to Cart
                            </button>
                        </div>
                    </div>
                </div>
            </section>
        </main>
    </div>

    <script>
        const toggle = document.getElementById('darkModeToggle');
        const body = document.body;

        // Check if user previously selected dark mode
        if (localStorage.getItem('theme') === 'dark') {
            body.classList.add('dark-mode');
            toggle.checked = true;
        }

        toggle.addEventListener('change', () => {
            if (toggle.checked) {
                body.classList.add('dark-mode');
                localStorage.setItem('theme', 'dark');
            } else {
                body.classList.remove('dark-mode');
                localStorage.setItem('theme', 'light');
            }
        });
    </script>
    <script>
function addToCart(name, price) {
    var cart = JSON.parse(localStorage.getItem('cart')) || [];
    
    var found = false;
    for (var i = 0; i < cart.length; i++) {
        if (cart[i].name === name) {
            cart[i].qty = cart[i].qty + 1;
            found = true;
            break;
        }
    }
    
    if (!found) {
        cart.push({ name: name, price: price, qty: 1 });
    }
    
    localStorage.setItem('cart', JSON.stringify(cart));
    window.location.href = 'cart.jsp';
}
</script>
</body>
</html>
