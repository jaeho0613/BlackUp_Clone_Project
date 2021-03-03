<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <!-- BlackUp Log -->
            <a class="navbar-brand" href="#">
                <img src="./img/main_logo.png" alt="#">
            </a>
            <!-- Toggler button-->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between" id="navbarSupportedContent">
                <!-- 우측 Navar Menu -->
                <ul class="navbar-nav mb-2 mb-lg-0">
                    <!-- Best50 -->
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">BEST50</a>
                    </li>
                    <!-- new -->
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">NEW</a>
                    </li>
                    <!-- top -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">TOP
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="#">T-shirts</a></li>
                            <li><a class="dropdown-item" href="#">Long-shirts</a></li>
                            <li>
                                <hr class="dropdown-divider" />
                            </li>
                            <li>
                                <a class="dropdown-item" href="#">Top</a>
                            </li>
                        </ul>
                    </li>
                    <!-- pants -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">PANTS
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="#">Short</a></li>
                            <li><a class="dropdown-item" href="#">Long</a></li>
                            <li>
                                <hr class="dropdown-divider" />
                            </li>
                            <li>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </li>
                        </ul>
                    </li>
                    <!-- acc -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">ACC
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="#">Bag</a></li>
                            <li><a class="dropdown-item" href="#">Shoes</a></li>
                            <li>
                                <hr class="dropdown-divider" />
                            </li>
                            <li>
                                <a class="dropdown-item" href="#">Accessories</a>
                            </li>
                        </ul>
                    </li>
                    <!-- sale -->
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">SALE</a>
                    </li>
                </ul>
                <!-- 좌측 Navar Menu -->
                <ul class="navbar-nav mb-2 mb-lg-0">
                    <!-- Signin -->
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">LOGIN</a>
                    </li>
                    <!-- SigUp -->
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="auth/join.jsp">JOIN</a>
                    </li>
                    <!-- SigOut -->
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">SIGNOUT</a>
                    </li>
                    <!-- Account -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">MY PAGE
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="#">ORDER</a></li>
                            <li><a class="dropdown-item" href="#">WISH</a></li>
                            <li>
                                <hr class="dropdown-divider" />
                            </li>
                            <li>
                                <a class="dropdown-item" href="#">ACCOUNT</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</body>