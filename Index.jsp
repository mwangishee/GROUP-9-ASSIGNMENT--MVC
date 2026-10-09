<%@ page contentType="text/html;charset=UTF-8"
         language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>ShopSmart | Online Shopping</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <link rel="stylesheet"
          href="css/style.css">

</head>

<body>

    <%@ include file="Header.jsp" %>

    <main class="container my-4">

        <section class="hero-section mb-5">

            <div class="row align-items-center">

                <div class="col-md-8">

                    <h1>Everything You Need, In One Place!</h1>

                    <p class="lead">
                        Discover amazing electronics at great prices.
                    </p>

                    <a href="#products"
                       class="btn btn-warning btn-lg mt-3">
                        Shop Now
                    </a>

                </div>

                <div class="col-md-4 text-center mt-4 mt-md-0">

                    <span style="font-size: 100px;">
                        🛍️
                    </span>

                </div>

            </div>

        </section>


        <section class="mb-5">

            <h2 class="section-title">
                Shop by Category
            </h2>

            <div class="row g-3">

                <div class="col-6 col-md-3">
                    <div class="bg-white rounded p-3 text-center shadow-sm">
                        <h3>💻</h3>
                        <p class="mb-0">Laptops</p>
                    </div>
                </div>

                <div class="col-6 col-md-3">
                    <div class="bg-white rounded p-3 text-center shadow-sm">
                        <h3>📱</h3>
                        <p class="mb-0">Phones</p>
                    </div>
                </div>

                <div class="col-6 col-md-3">
                    <div class="bg-white rounded p-3 text-center shadow-sm">
                        <h3>🎧</h3>
                        <p class="mb-0">Accessories</p>
                    </div>
                </div>

                <div class="col-6 col-md-3">
                    <div class="bg-white rounded p-3 text-center shadow-sm">
                        <h3>⌚</h3>
                        <p class="mb-0">Smartwatches</p>
                    </div>
                </div>

            </div>

        </section>


        <section id="products">

            <div class="d-flex justify-content-between
                        align-items-center mb-4">

                <h2 class="section-title mb-0">
                    Featured Electronics
                </h2>

                <span class="badge text-bg-success">
                    Great Deals
                </span>

            </div>


            <div class="row g-4">


                <!-- PRODUCT 1 -->

                <div class="col-12 col-sm-6 col-lg-3">

                    <div class="card product-card h-100">

                        <img
                            src="https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=600&q=80"
                            class="product-image"
                            alt="Laptop">

                        <div class="card-body d-flex flex-column">

                            <h5 class="card-title">
                                Pro Laptop
                            </h5>

                            <p class="text-muted small">
                                Powerful laptop for work and study.
                            </p>

                            <p class="product-price">
                                KSh 65,000
                            </p>

                            <p class="small text-success">
                                In stock
                            </p>

                            <form action="cart.jsp" method="get"
                                  class="mt-auto">

                                <input type="hidden"
                                       name="productId"
                                       value="P001">

                                <input type="hidden"
                                       name="productName"
                                       value="Pro Laptop">

                                <input type="hidden"
                                       name="price"
                                       value="65000">

                                <button type="submit"
                                        class="btn btn-warning w-100">
                                    Add to Cart
                                </button>

                            </form>

                        </div>

                    </div>

                </div>


                <!-- PRODUCT 2 -->

                <div class="col-12 col-sm-6 col-lg-3">

                    <div class="card product-card h-100">

                        <img
                            src="https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?auto=format&fit=crop&w=600&q=80"
                            class="product-image"
                            alt="Smartphone">

                        <div class="card-body d-flex flex-column">

                            <h5 class="card-title">
                                Smart Smartphone
                            </h5>

                            <p class="text-muted small">
                                Stay connected wherever you go.
                            </p>

                            <p class="product-price">
                                KSh 25,000
                            </p>

                            <p class="small text-success">
                                In stock
                            </p>

                            <form action="cart.jsp" method="get"
                                  class="mt-auto">

                                <input type="hidden"
                                       name="productId"
                                       value="P002">

                                <input type="hidden"
                                       name="productName"
                                       value="Smart Smartphone">

                                <input type="hidden"
                                       name="price"
                                       value="25000">

                                <button type="submit"
                                        class="btn btn-warning w-100">
                                    Add to Cart
                                </button>

                            </form>

                        </div>

                    </div>

                </div>


                <!-- PRODUCT 3 -->

                <div class="col-12 col-sm-6 col-lg-3">

                    <div class="card product-card h-100">

                        <img
                            src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=600&q=80"
                            class="product-image"
                            alt="Headphones">

                        <div class="card-body d-flex flex-column">

                            <h5 class="card-title">
                                Wireless Headphones
                            </h5>

                            <p class="text-muted small">
                                Enjoy your favourite music.
                            </p>

                            <p class="product-price">
                                KSh 3,500
                            </p>

                            <p class="small text-success">
                                In stock
                            </p>

                            <form action="cart.jsp" method="get"
                                  class="mt-auto">

                                <input type="hidden"
                                       name="productId"
                                       value="P003">

                                <input type="hidden"
                                       name="productName"
                                       value="Wireless Headphones">

                                <input type="hidden"
                                       name="price"
                                       value="3500">

                                <button type="submit"
                                        class="btn btn-warning w-100">
                                    Add to Cart
                                </button>

                            </form>

                        </div>

                    </div>

                </div>


                <!-- PRODUCT 4 -->

                <div class="col-12 col-sm-6 col-lg-3">

                    <div class="card product-card h-100">

                        <img
                            src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=600&q=80"
                            class="product-image"
                            alt="Smartwatch">

                        <div class="card-body d-flex flex-column">

                            <h5 class="card-title">
                                Smartwatch
                            </h5>

                            <p class="text-muted small">
                                A smart companion for everyday life.
                            </p>

                            <p class="product-price">
                                KSh 5,000
                            </p>

                            <p class="small text-success">
                                In stock
                            </p>

                            <form action="cart.jsp" method="get"
                                  class="mt-auto">

                                <input type="hidden"
                                       name="productId"
                                       value="P004">

                                <input type="hidden"
                                       name="productName"
                                       value="Smartwatch">

                                <input type="hidden"
                                       name="price"
                                       value="5000">

                                <button type="submit"
                                        class="btn btn-warning w-100">
                                    Add to Cart
                                </button>

                            </form>

                        </div>

                    </div>

                </div>


            </div>

        </section>

    </main>


    <%@ include file="Footer.jsp" %>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
    </script>

</body>

</html>