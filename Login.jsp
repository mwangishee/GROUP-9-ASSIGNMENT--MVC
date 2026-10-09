<%@ page contentType="text/html;charset=UTF-8"
         language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Login | ShopSmart</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <link rel="stylesheet" href="css/style.css">

</head>

<body>

    <%@ include file="Header.jsp" %>


    <main class="container">

        <div class="form-card">

            <div class="text-center mb-4">

                <h2 class="fw-bold">
                    Welcome Back!
                </h2>

                <p class="text-muted">
                    Sign in to continue shopping.
                </p>

            </div>


            <form action="LoginServelet" method="POST">

                <div class="mb-3">

                    <label for="username"
                           class="form-label">
                        Username
                    </label>

                    <input type="text"
                           class="form-control"
                           id="username"
                           name="username"
                           placeholder="Enter your username"
                           required>

                </div>


                <div class="mb-3">

                    <label for="password"
                           class="form-label">
                        Password
                    </label>

                    <input type="password"
                           class="form-control"
                           id="password"
                           name="password"
                           placeholder="Enter your password"
                           required>

                </div>


                <button type="submit"
                        class="btn btn-warning w-100 py-2">
                    Login
                </button>

            </form>


            <p class="text-center mt-4 mb-0">

                Don't have an account?

                <a href="register.jsp">
                    Register here
                </a>

            </p>

        </div>

    </main>


    <%@ include file="Footer.jsp" %>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
    </script>

</body>

</html>