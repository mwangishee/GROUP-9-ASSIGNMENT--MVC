<%@ page contentType="text/html;charset=UTF-8"
         language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Order Successful | ShopSmart</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <link rel="stylesheet" href="css/style.css">

</head>

<body>

    <%@ include file="Header.jsp" %>


    <main class="container my-5">

        <div class="form-card text-center">

            <div class="success-icon mb-3">
                &#10004;
            </div>


            <h2 class="fw-bold text-success mb-3">
                Order Successful!
            </h2>


            <p class="lead">

                Thank you! Your order has been placed successfully.

            </p>


            <p class="text-muted">

                Thank you for shopping with ShopSmart.
                We appreciate your business.

            </p>


            <div class="d-grid gap-2 mt-4">

                <a href="Index.jsp"
                   class="btn btn-warning btn-lg">

                    Continue Shopping

                </a>


                <a href="dashboard.jsp"
                   class="btn btn-outline-dark">

                    View My Dashboard

                </a>

            </div>

        </div>

    </main>


    <%@ include file="Footer.jsp" %>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
    </script>

</body>

</html>