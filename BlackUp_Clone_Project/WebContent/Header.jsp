<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<nav class="navbar navbar-expand-lg navbar-light fixed-top m-3">
	<div class="container-fluid">
		<!-- BlackUp Log -->
		<a class="navbar-brand" href="/BlackUp_Clone_Project/main">
			<img src="https://black-up.kr/web/upload/yangji_pc_crumb/main_logo.png" alt="#">
		</a>
		<!-- Toggler button-->
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse justify-content-between" id="navbarSupportedContent">
			<!-- 우측 Navar Menu -->
			<ul class="navbar-nav mb-2 mb-lg-0">
				<!-- MADE -->
				<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
						data-bs-toggle="dropdown" aria-expanded="false">MADE
					</a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
						<li><a class="dropdown-item" href="/BlackUp_Clone_Project/category?name=MADE&type=상의">상의</a></li>
						<li><a class="dropdown-item" href="/BlackUp_Clone_Project/category?name=MADE&type=하의">하의</a></li>
						<li><a class="dropdown-item" href="/BlackUp_Clone_Project/category??name=MADE&type=기타">기타</a></li>
					</ul>
				</li>
				<!-- OUTER -->
				<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
						data-bs-toggle="dropdown" aria-expanded="false">OUTER
					</a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
						<li><a class="dropdown-item" href="/BlackUp_Clone_Project/category?name=OUTER&type=가디건">가디건</a></li>
						<li><a class="dropdown-item" href="/BlackUp_Clone_Project/category?name=OUTER&type=자켓/베스트">자켓/베스트</a></li>
						<li><a class="dropdown-item" href="/BlackUp_Clone_Project/category?name=OUTER&type=점퍼">점퍼</a>
						<li><a class="dropdown-item" href="/BlackUp_Clone_Project/category?name=OUTER&type=코드">코트</a>
						</li>
					</ul>
				</li>
				<!-- PANTS -->
				<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
						data-bs-toggle="dropdown" aria-expanded="false">PANTS
					</a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
						<li><a class="dropdown-item" href="/BlackUp_Clone_Project/category?name=PANTS&type=슬랙스">슬랙스</a></li>
						<li><a class="dropdown-item" href="/BlackUp_Clone_Project/category?name=PANTS&type=면바지">면바지</a></li>
					</ul>
				</li>
				<!-- sale -->
				<li class="nav-item"><a class="nav-link active" aria-current="page" href="#">SALE</a></li>
			</ul>
			<!-- 좌측 Navar Menu -->
			<ul class="navbar-nav mb-2 mb-lg-0">
				<!-- Signin -->
				<li class="nav-item"><a class="nav-link active" aria-current="page"
						href="/BlackUp_Clone_Project/login">LOGIN</a></li>
				<!-- SigUp -->
				<li class="nav-item"><a class="nav-link active" aria-current="page"
						href="/BlackUp_Clone_Project/join">JOIN</a></li>
				<!-- SigOut -->
				<li class="nav-item"><a class="nav-link active" aria-current="page" href="#">SIGNOUT</a></li>
				<!-- Account -->
				<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
						data-bs-toggle="dropdown" aria-expanded="false">MY
						PAGE </a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
						<li><a class="dropdown-item" href="#">ORDER</a></li>
						<li><a class="dropdown-item" href="#">WISH</a></li>
						<li>
							<hr class="dropdown-divider" />
						</li>
						<li><a class="dropdown-item" href="#">ACCOUNT</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</nav>