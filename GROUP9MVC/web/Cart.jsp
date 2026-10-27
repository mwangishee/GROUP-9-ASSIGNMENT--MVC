<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Shopping Cart</title>
    <link rel="stylesheet" href="Style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        body { background: #050505; color: white; font-family: 'Times New Roman', serif; }
        .cart-header { display: flex; justify-content: space-between; align-items: center; padding: 20px 50px; background: #121212; border-bottom: 1px solid #333; }
        .cart-logo { color: #8A2BE2; font-size: 1.8rem; font-weight: bold; text-decoration: none; }
        .cart-nav a { color: #ccc; text-decoration: none; margin-left: 20px; font-size: 1.1rem; }
        .cart-container { max-width: 1000px; margin: 50px auto; padding: 20px; }
        .cart-table { width: 100%; border-collapse: collapse; background: #121212; border-radius: 10px; overflow: hidden; }
        .cart-table th { background: #1a1a1a; color: #8A2BE2; padding: 15px; text-align: left; font-size: 1.2rem; }
        .cart-table td { padding: 15px; border-bottom: 1px solid #333; color: #fff; font-size: 1.1rem; }
        .cart-actions { display: flex; justify-content: space-between; margin-top: 30px; }
        .btn-continue { background: transparent; border: 2px solid #8A2BE2; color: #8A2BE2; padding: 12px 25px; font-size: 1.1rem; border-radius: 8px; text-decoration: none; font-family: 'Times New Roman', serif; }
        .btn-continue:hover { background: #8A2BE2; color: white; }
        .btn-checkout { background: #8A2BE2; color: white; border: none; padding: 12px 30px; font-size: 1.2rem; border-radius: 8px; cursor: pointer; font-family: 'Times New Roman', serif; font-weight: bold; text-decoration: none; display: inline-block; }
        .btn-checkout:hover { background: #6A1B9A; }
        .total-row { text-align: right; font-weight: bold; font-size: 1.3rem; color: #8A2BE2; }
        .remove-btn { background: #ff4444; color: white; border: none; padding: 5px 10px; border-radius: 5px; cursor: pointer; }
    </style>
</head>
<body>
    <header class="cart-header">
        <a href="dashboard.jsp" class="cart-logo"><i class="fas fa-shopping-cart"></i> ShopSmart</a>
        <nav class="cart-nav">
            <a href="dashboard.jsp"><i class="fas fa-home"></i> Home</a>
            <a href="cart.jsp" style="color: #8A2BE2;"><i class="fas fa-shopping-cart"></i> Cart (<span id="header-count">0</span>)</a>
        </nav>
    </header>

    <div class="cart-container">
        <h1 style="margin-bottom: 20px;">Your Shopping Cart</h1>
        <table class="cart-table">
            <thead>
                <tr>
                    <th>Product Name</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Subtotal</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody id="cart-body"></tbody>
            <tfoot>
                <tr>
                    <td colspan="3" class="total-row">Total:</td>
                    <td class="total-row" id="cart-total">KSh 0</td>
                    <td></td>
                </tr>
            </tfoot>
        </table>
        <div class="cart-actions">
            <a href="dashboard.jsp" class="btn-continue">Continue Shopping</a>
            <a href="checkout.jsp" class="btn-checkout">Proceed to Checkout</a>
        </div>
    </div>

    <script>
        var cart = JSON.parse(localStorage.getItem('cart')) || [];
        
        var tbody = document.getElementById('cart-body');
        var total = 0;
        var totalItems = 0;
        
        if (cart.length === 0) {
            tbody.innerHTML = '<tr><td colspan="5" style="text-align:center; padding: 30px;">Your cart is empty. <a href="dashboard.jsp" style="color:#8A2BE2;">Go shopping!</a></td></tr>';
        } else {
            for (var i = 0; i < cart.length; i++) {
                var item = cart[i];
                var name = item.name;
                var price = item.price;
                var qty = item.qty;
                var subtotal = price * qty;
                
                total += subtotal;
                totalItems += qty;
                
                tbody.innerHTML += '<tr><td>' + name + '</td><td>' + qty + '</td><td>KSh ' + price.toLocaleString() + '</td><td>KSh ' + subtotal.toLocaleString() + '</td><td><button class="remove-btn" onclick="removeItem(' + i + ')">Remove</button></td></tr>';
            }
        }
        
        document.getElementById('cart-total').innerText = 'KSh ' + total.toLocaleString();
        document.getElementById('header-count').innerText = totalItems;
        
        function removeItem(index) {
            cart.splice(index, 1);
            localStorage.setItem('cart', JSON.stringify(cart));
            location.reload();
        }
    </script>
</body>
</html>