<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Checkout</title>
    <link rel="stylesheet" href="Style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        body { background: #050505; color: white; font-family: 'Times New Roman', serif; }
        .checkout-header { display: flex; justify-content: space-between; align-items: center; padding: 20px 50px; background: #121212; border-bottom: 1px solid #333; }
        .checkout-logo { color: #8A2BE2; font-size: 1.8rem; font-weight: bold; text-decoration: none; }
        .checkout-nav a { color: #ccc; text-decoration: none; margin-left: 20px; font-size: 1.1rem; }
        .checkout-container { max-width: 800px; margin: 50px auto; padding: 20px; }
        .checkout-card { background: #121212; border: 1px solid #333; border-radius: 12px; padding: 40px; margin-bottom: 30px; }
        .checkout-card h2 { color: #8A2BE2; margin-bottom: 25px; font-size: 1.8rem; }
        .form-group { margin-bottom: 20px; }
        .form-group label { display: block; margin-bottom: 8px; color: #ccc; font-size: 1.1rem; }
        .form-group input, .form-group select { width: 100%; padding: 12px; background: #1a1a1a; border: 1px solid #333; border-radius: 8px; color: white; font-size: 1rem; font-family: 'Times New Roman', serif; }
        .form-row { display: grid; grid-template-columns: 1fr 1fr; gap: 20px; }
        .btn-place-order { width: 100%; padding: 15px; background: #8A2BE2; color: white; border: none; border-radius: 8px; font-size: 1.2rem; font-weight: bold; cursor: pointer; font-family: 'Times New Roman', serif; margin-top: 20px; }
        .btn-place-order:hover { background: #6A1B9A; }
        .order-summary { background: #1a1a1a; padding: 20px; border-radius: 8px; }
        .summary-row { display: flex; justify-content: space-between; padding: 10px 0; border-bottom: 1px solid #333; }
        .summary-row:last-child { border-bottom: none; font-weight: bold; color: #8A2BE2; font-size: 1.2rem; }
    </style>
</head>
<body>
    <header class="checkout-header">
        <a href="dashboard.jsp" class="checkout-logo"><i class="fas fa-shopping-cart"></i> ShopSmart</a>
        <nav class="checkout-nav">
            <a href="dashboard.jsp"><i class="fas fa-home"></i> Home</a>
            <a href="cart.jsp"><i class="fas fa-shopping-cart"></i> Cart</a>
        </nav>
    </header>

    <div class="checkout-container">
        <h1 style="margin-bottom: 30px; text-align: center;">Checkout</h1>
        <form id="checkoutForm">
            <div class="checkout-card">
                <h2><i class="fas fa-shipping-fast"></i> Shipping Information</h2>
                <div class="form-group">
                    <label>Full Name</label>
                    <input type="text" name="fullname" placeholder="Enter your full name" required>
                </div>
                <div class="form-group">
                    <label>Phone Number</label>
                    <input type="tel" name="phone" placeholder="e.g., 0712345678" required>
                </div>
                <div class="form-group">
                    <label>Delivery Address</label>
                    <input type="text" name="address" placeholder="Enter your delivery address" required>
                </div>
                <div class="form-row">
                    <div class="form-group">
                        <label>City</label>
                        <input type="text" name="city" placeholder="e.g., Nairobi" required>
                    </div>
                    <div class="form-group">
                        <label>Postal Code</label>
                        <input type="text" name="postal" placeholder="e.g., 00100" required>
                    </div>
                </div>
            </div>
            <div class="checkout-card">
                <h2><i class="fas fa-credit-card"></i> Payment Method</h2>
                <div class="form-group">
                    <label>Select Payment Method</label>
                    <select name="payment" required>
                        <option value="">-- Choose Payment Method --</option>
                        <option value="mpesa">M-Pesa</option>
                        <option value="card">Credit/Debit Card</option>
                        <option value="paypal">PayPal</option>
                    </select>
                </div>
            </div>
            <div class="checkout-card">
                <h2><i class="fas fa-receipt"></i> Order Summary</h2>
                <div class="order-summary" id="orderSummary"></div>
            </div>
            <button type="submit" class="btn-place-order"><i class="fas fa-check-circle"></i> Place Order</button>
        </form>
    </div>

    <script>
        var cart = JSON.parse(localStorage.getItem('cart')) || [];
        var summaryDiv = document.getElementById('orderSummary');
        var total = 0;
        var html = '';
        
        if (cart.length === 0) {
            html = '<div style="text-align:center; padding: 20px; color: #888;">No items in cart</div>';
        } else {
            for (var i = 0; i < cart.length; i++) {
                var item = cart[i];
                var subtotal = item.price * item.qty;
                total += subtotal;
                html += '<div class="summary-row"><span>' + item.name + ' x ' + item.qty + '</span><span>KSh ' + subtotal.toLocaleString() + '</span></div>';
            }
            html += '<div class="summary-row"><span>Total</span><span>KSh ' + total.toLocaleString() + '</span></div>';
        }
        
        summaryDiv.innerHTML = html;
        
        document.getElementById('checkoutForm').addEventListener('submit', function(e) {
            e.preventDefault();
            alert('Order placed successfully!');
            localStorage.removeItem('cart');
            window.location.href = 'dashboard.jsp';
        });
    </script>
</body>
</html>