<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <title>BlackUp_Clone</title>

  <link rel="stylesheet" href="./css/bootstrap.min.css">
  <link rel="stylesheet" href="./css/custom.css">

</head>

<body>
  <!-- 헤드 부분 -->
  <jsp:include page="./Header.jsp"></jsp:include>

  <!-- 맨위 이미지 슬라이드 섹션 -->
  <section id="main_slide">
    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
          aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
          aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
          aria-label="Slide 3"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3"
          aria-label="Slide 4"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4"
          aria-label="Slide 5"></button>
      </div>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="https://black-up.kr/web/upload/yangji_pc_crumb/210224-madesale-PCmain.jpg" class="d-block w-100"
            alt="main_img">
        </div>
        <div class="carousel-item">
          <img src="https://black-up.kr/web/upload/yangji_pc_crumb/210302-main01.jpg" class="d-block w-100"
            alt="main_img">
        </div>
        <div class="carousel-item">
          <img src="https://black-up.kr/web/upload/yangji_pc_crumb/210302-main02.jpg" class="d-block w-100"
            alt="main_img">
        </div>
        <div class="carousel-item">
          <img src="https://black-up.kr/web/upload/yangji_pc_crumb/210226-main02.jpg" class="d-block w-100"
            alt="main_img">
        </div>
        <div class="carousel-item">
          <img src="https://black-up.kr/web/upload/yangji_pc_crumb/210226-main01.jpg" class="d-block w-100"
            alt="main_img">
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
        data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
        data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
      </button>
    </div>
  </section>

  <!-- 상의 이미지 그리드 섹션 -->
  <section class="container" id="top_item">
    <h2 class="product-title text-start">Recent hot item</h2>
    <!-- 그룹 1 -->
    <div class="card-group">
      <div class="card">
        <img src="https://black-up.kr/web/product/medium/202102/e5bf60faf4bfa80de1fd8bbc9a09407b.webp"
          class="card-img-top" alt="...">
      </div>
      <div class="card">
        <img src="https://black-up.kr/web/product/medium/202103/c8e553149f4fe4b6099e0ab64073f87a.webp"
          class="card-img-top" alt="...">
      </div>
      <div class="card">
        <img src="https://black-up.kr/web/product/medium/202102/bedb9e463c11163a7069dabf6577ba39.webp"
          class="card-img-top" alt="...">
      </div>
      <div class="card">
        <img src="https://black-up.kr/web/product/medium/202102/8c5896bf7771c02a4948a3be541fe31e.webp"
          class="card-img-top" alt="...">
      </div>
    </div>
    <!-- 그룹 2 -->
    <div class="card-group">
      <div class="card">
        <img src="https://black-up.kr/web/product/medium/202102/024bcd8a020081fe5b9cb15f5e62f406.webp"
          class="card-img-top" alt="...">
      </div>
      <div class="card">
        <img src="https://black-up.kr/web/product/medium/202102/a77678c22239dc4c5ce0ed9b0f855e2a.webp"
          class="card-img-top" alt="...">
      </div>
      <div class="card">
        <img src="https://black-up.kr/web/product/medium/202102/8774b3b2922f80e733d94f56be5c5f11.webp"
          class="card-img-top" alt="...">
      </div>
      <div class="card">
        <img src="https://black-up.kr/web/product/medium/202102/fc25c3e891cad5d6649b7e1788d56f5d.webp"
          class="card-img-top" alt="...">
      </div>
    </div>
  </section>

  <!-- 오늘의 새로운 아이템 섹션 -->
  <section class="container" id="new_item">
    <h2 class="product-title text-start">Today's new item</h2>

    <!-- 그룹 -->
    <div class="card-group">
      <!-- 의상 -->
      <div class="card border-0">
        <img src="https://black-up.kr/web/product/medium/202102/60baee2261e478ec5bf72609fbf05243.webp"
          class="card-img-top" alt="...">
        <div class="card-body">
          <!-- 상품 정보 -->
          <p class="text-center">[MADE] 메이킹 베이직 니트</p>
          <p class="text-center">22,800 won (1,200 won 할인)</p>
          <!-- 컬러 셋 -->
          <div class="colors d-flex align-items-center justify-content-center mt-1">
            <span class="border border-dark" style="background-color: #4BAB6D;"></span>
            <span class="border border-dark" style="background-color: #A9A9A9;"></span>
            <span class="border border-dark" style="background-color: #000000;"></span>
          </div>
        </div>
      </div>
      <!-- 의상 -->
      <div class="card border-0">
        <img src="https://black-up.kr/web/product/medium/202103/917205722b5ae79ae5c916f98e7d3e26.webp"
          class="card-img-top" alt="...">
        <div class="card-body">
          <!-- 상품 정보 -->
          <p class="text-center">[MADE] 리처 와이드 코튼팬츠</p>
          <p class="text-center">26,600 won (1,400 won 할인)</p>
          <!-- 컬러 셋 -->
          <div class="colors d-flex align-items-center justify-content-center mt-1">
            <span class="border border-dark" style="background-color: #FEFFEF;"></span>
            <span class="border border-dark" style="background-color: #C4BDB0;"></span>
            <span class="border border-dark" style="background-color: #ADA48A;"></span>
            <span class="border border-dark" style="background-color: #474C70;"></span>
            <span class="border border-dark" style="background-color: #000000;"></span>
          </div>
        </div>
      </div>
      <!-- 의상 -->
      <div class="card border-0">
        <img src="https://black-up.kr/web/product/medium/202102/d866bd8bb90b3f9b5a193acd0114c718.webp"
          class="card-img-top" alt="...">
        <div class="card-body">
          <!-- 상품 정보 -->
          <p class="text-center">[MADE] 리아빅 라운드 티셔츠</p>
          <p class="text-center">15,200 won (800 won 할인)</p>
          <!-- 컬러 셋 -->
          <div class="colors d-flex align-items-center justify-content-center mt-1">
            <span class="border border-dark" style="background-color: #007543;"></span>
            <span class="border border-dark" style="background-color: #0000FD;"></span>
            <span class="border border-dark" style="background-color: #000000;"></span>
          </div>
        </div>
      </div>
    </div>

    <!-- 그룹 -->
    <div class="card-group">
      <!-- 의상 -->
      <div class="card border-0">
        <img src="https://black-up.kr/web/product/medium/202103/c231f5cfecca779307400aea97be961a.webp"
          class="card-img-top" alt="...">
        <div class="card-body">
          <!-- 상품 정보 -->
          <p class="text-center">[MADE] 리타 블루 스트레이트 데님팬츠</p>
          <p class="text-center">30,400 won (1,600 won 할인)</p>
          <!-- 컬러 셋 -->
          <div class="colors d-flex align-items-center justify-content-center mt-1">
          </div>
        </div>
      </div>
      <!-- 의상 -->
      <div class="card border-0">
        <img src="https://black-up.kr/web/product/medium/202102/2039e316a972d461ba69982333fcd242.jpg"
          class="card-img-top" alt="...">
        <div class="card-body">
          <!-- 상품 정보 -->
          <p class="text-center">소튼 크롭 워머 후드집업</p>
          <p class="text-center">27,550 won (1,450 won 할인)</p>
          <!-- 컬러 셋 -->
          <div class="colors d-flex align-items-center justify-content-center mt-1">
            <span class="border border-dark" style="background-color: #FFFFFF;"></span>
            <span class="border border-dark" style="background-color: #EBDCC5;"></span>
            <span class="border border-dark" style="background-color: #A9A9A9;"></span>
            <span class="border border-dark" style="background-color: #000000;"></span>
          </div>
        </div>
      </div>
      <!-- 의상 -->
      <div class="card border-0">
        <img src="https://black-up.kr/web/product/medium/202102/5b212d137950702492d28b20a595dcd8.jpg"
          class="card-img-top" alt="...">
        <div class="card-body">
          <!-- 상품 정보 -->
          <p class="text-center">덴디 핀턱 슬랙스</p>
          <p class="text-center">22,800 won (1,200 won 할인)</p>
          <!-- 컬러 셋 -->
          <div class="colors d-flex align-items-center justify-content-center mt-1">
            <span class="border border-dark" style="background-color: #EBE7D6;"></span>
            <span class="border border-dark" style="background-color: #787878;"></span>
            <span class="border border-dark" style="background-color: #000000;"></span>
          </div>
        </div>
      </div>
    </div>

    <!-- 그룹 -->
    <div class="card-group">
      <!-- 의상 -->
      <div class="card border-0">
        <img src="https://black-up.kr/web/product/medium/202103/41a102d2583ad33b76613a8ad5ff4f36.webp"
          class="card-img-top" alt="...">
        <div class="card-body">
          <!-- 상품 정보 -->
          <p class="text-center">(UNISEX) 아넷 오버핏 브이넥니트</p>
          <p class="text-center">24,700 won (1,300 won 할인)</p>
          <!-- 컬러 셋 -->
          <div class="colors d-flex align-items-center justify-content-center mt-1">
            <span class="border border-dark" style="background-color: #FEFFEF;"></span>
            <span class="border border-dark" style="background-color: #B0B566;"></span>
            <span class="border border-dark" style="background-color: #A2BDB6;"></span>
            <span class="border border-dark" style="background-color: #93A5B8;"></span>
            <span class="border border-dark" style="background-color: #6E6E6E;"></span>
            <span class="border border-dark" style="background-color: #000000;"></span>
          </div>
        </div>
      </div>
      <!-- 의상 -->
      <div class="card border-0">
        <img src="https://black-up.kr/web/product/medium/202103/f14b5f4bab347cbf0173757dfd77be0e.webp"
          class="card-img-top" alt="...">
        <div class="card-body">
          <!-- 상품 정보 -->
          <p class="text-center">몽느 스티치 조거팬츠</p>
          <p class="text-center">29,450 won (1,550 won 할인)</p>
          <!-- 컬러 셋 -->
          <div class="colors d-flex align-items-center justify-content-center mt-1">
            <span class="border border-dark" style="background-color: #F5F5F5;"></span>
            <span class="border border-dark" style="background-color: #C2C2C2;"></span>
            <span class="border border-dark" style="background-color: #474747;"></span>
            <span class="border border-dark" style="background-color: #000000;"></span>
          </div>
        </div>
      </div>
      <!-- 의상 -->
      <div class="card border-0">
        <img src="https://black-up.kr/web/product/medium/202103/020cdafa2bd9eebf4023a8d18c14243a.webp"
          class="card-img-top" alt="...">
        <div class="card-body">
          <!-- 상품 정보 -->
          <p class="text-center">트윙 프린팅 반팔티</p>
          <p class="text-center">13,300 won (700 won 할인)</p>
          <!-- 컬러 셋 -->
          <div class="colors d-flex align-items-center justify-content-center mt-1">
            <span class="border border-dark" style="background-color: ##FEFFEF;"></span>
            <span class="border border-dark" style="background-color: #000000;"></span>
          </div>
        </div>
      </div>
    </div>

  </section>

  <!-- 푸터 부분 -->
  <jsp:include page="./Footer.jsp"></jsp:include>

  <script src="./js/bootstrap.min.js"></script>
  <script src="./js/jquery-3.5.1.min.js"></script>
  <script src="./js/popper.min.js"></script>
</body>

</html>