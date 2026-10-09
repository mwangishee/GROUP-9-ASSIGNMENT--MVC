<%@ page contentType="text/html;charset=UTF-8"
         language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Shopping Cart | ShopSmart</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <link rel="stylesheet" href="css/style.css">

</head>

<body>

    <%@ include file="Header.jsp" %>


    <main class="container my-5">

        <h2 class="section-title">
            Your Shopping Cart
        </h2>


        <div class="table-responsive bg-white rounded shadow-sm p-3">

            <table class="table table-hover align-middle">

                <thead class="table-dark">

                    <tr>
                        <th>Product Name</th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Subtotal</th>
                    </tr>

                </thead>


                <tbody>

                    <tr>

                        <td>Pro Laptop</td>

                        <td>1</td>

                        <td>KSh 65,000</td>

                        <td>KSh 65,000</td>

                    </tr>

                </tbody>


                <tfoot>

                    <tr>

                        <th colspan="3"
                            class="text-end">
                            Total
                        </th>

                        <th>KSh 65,000</th>

                    </tr>

                </tfoot>

            </table>

        </div>


        <div class="d-flex justify-content-between
                    align-items-center flex-wrap gap-3 mt-4">

            <a href="Index.jsp"
               class="btn btn-outline-dark">
                Continue Shopping
            </a>

            <a href="checkout.jsp"
               class="btn btn-warning btn-lg">
                Proceed to Checkout
            </a>

        </div>

    </main>


    <%@ include file="Footer.jsp" %>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
    </script>

</body>

</html>