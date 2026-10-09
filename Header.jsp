<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
    <div class="container">

        <a class="navbar-brand fw-bold text-warning"
           href="Index.jsp">
            ShopSmart
        </a>

        <button class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#mainNavbar"
                aria-controls="mainNavbar"
                aria-expanded="false"
                aria-label="Toggle navigation">

            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="mainNavbar">

            <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                <li class="nav-item">
                    <a class="nav-link" href="Index.jsp">
                        Home
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="cart.jsp">
                        Cart
                    </a>
                </li>

            </ul>

            <form class="d-flex me-lg-3 mb-3 mb-lg-0"
                  role="search"
                  action="Index.jsp"
                  method="get">

                <input class="form-control me-2"
                       type="search"
                       name="search"
                       placeholder="Search products..."
                       aria-label="Search">

                <button class="btn btn-warning"
                        type="submit">
                    Search
                </button>

            </form>

            <div class="d-flex gap-2">

                <a href="Login.jsp"
                   class="btn btn-outline-light">
                    Login
                </a>

                <a href="register.jsp"
                   class="btn btn-warning">
                    Register
                </a>

            </div>

        </div>
    </div>
</nav>
