<%@ page contentType="text/html;charset=UTF-8"
         language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Checkout | ShopSmart</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <link rel="stylesheet" href="css/style.css">

</head>

<body>

    <%@ include file="Header.jsp" %>


    <main class="container my-5">

        <div class="row g-4">


            <!-- CHECKOUT FORM -->

            <div class="col-lg-8">

                <div class="checkout-card">

                    <h2 class="section-title">
                        Checkout
                    </h2>

                    <p class="text-muted">
                        Choose your payment, shipping and discount options.
                    </p>


                    <form action="CheckoutServlet"
                          method="POST">


                        <!-- PAYMENT METHOD -->

                        <div class="mb-4">

                            <label for="paymentMethod"
                                   class="form-label fw-bold">
                                Payment Method
                            </label>

                            <select class="form-select"
                                    id="paymentMethod"
                                    name="paymentMethod"
                                    required>

                                <option value="CreditCard">
                                    Credit Card
                                </option>

                                <option value="Mpesa">
                                    M-Pesa
                                </option>

                                <option value="PayPal">
                                    PayPal
                                </option>

                            </select>

                        </div>


                        <!-- SHIPPING METHOD -->

                        <div class="mb-4">

                            <label for="shippingMethod"
                                   class="form-label fw-bold">
                                Shipping Method
                            </label>

                            <select class="form-select"
                                    id="shippingMethod"
                                    name="shippingMethod"
                                    required>

                                <option value="Standard">
                                    Standard Shipping
                                </option>

                                <option value="Express">
                                    Express Shipping
                                </option>

                                <option value="Pickup">
                                    Store Pickup
                                </option>

                            </select>

                        </div>


                        <!-- DISCOUNT CODE -->

                        <div class="mb-4">

                            <label for="discountCode"
                                   class="form-label fw-bold">
                                Discount Code
                            </label>

                            <select class="form-select"
                                    id="discountCode"
                                    name="discountCode"
                                    required>

                                <option value="None">
                                    No Discount
                                </option>

                                <option value="Student">
                                    Student Discount
                                </option>

                                <option value="Bulk">
                                    Bulk Purchase Discount
                                </option>

                            </select>

                        </div>


                        <div class="alert alert-info">

                            Please confirm your selections before
                            submitting your order.

                        </div>


                        <button type="submit"
                                class="btn btn-warning btn-lg w-100">

                            Place Order

                        </button>


                    </form>

                </div>

            </div>


            <!-- ORDER SUMMARY -->

            <div class="col-lg-4">

                <div class="checkout-card">

                    <h4 class="fw-bold mb-4">
                        Order Summary
                    </h4>


                    <div class="d-flex justify-content-between mb-3">

                        <span>Pro Laptop</span>

                        <span>KSh 65,000</span>

                    </div>


                    <hr>


                    <div class="d-flex justify-content-between fw-bold">

                        <span>Subtotal</span>

                        <span>KSh 65,000</span>

                    </div>


                    <p class="text-muted small mt-3 mb-0">

                        Final charges and applicable discounts
                        should be calculated by the backend.

                    </p>

                </div>

            </div>


        </div>

    </main>


    <%@ include file="Footer.jsp" %>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
    </script>

</body>

</html>