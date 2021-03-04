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
  <h2 class="product-title text-start">Today`s new item</h2>
    <!-- 그룹 1 -->
    <div class="card-group row-cols-1 row-cols-md-2 g-4">
      <div class="card border-0">
        <img src="https://black-up.kr/web/product/medium/202103/f14b5f4bab347cbf0173757dfd77be0e.webp"
          class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title text-center">[MADE] 메이킹 베이직 니트</h5>
          <p class="card-text text-center">22,800 won (1,200 won 할인)</p>
        </div>
      </div>
      <div class="card border-0">
        <img src="https://black-up.kr/web/product/medium/202103/020cdafa2bd9eebf4023a8d18c14243a.webp"
          class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Card title</h5>
          <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
          <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
        </div>
      </div>
      <div class="card border-0">
        <img src="https://black-up.kr/web/product/medium/202103/4e809b73e1a17205857594ad1c586d91.webp"
          class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Card title</h5>
          <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional
            content. This card has even longer content than the first to show that equal height action.</p>
          <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
        </div>
      </div>
    </div>
    <!-- 그룹 2 -->
    <div class="card-group">
      <div class="card border-0">
        <img src="https://black-up.kr/web/product/medium/202103/f14b5f4bab347cbf0173757dfd77be0e.webp"
          class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Card title</h5>
          <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional
            content. This content is a little bit longer.</p>
          <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
        </div>
      </div>
      <div class="card border-0">
        <img src="https://black-up.kr/web/product/medium/202103/020cdafa2bd9eebf4023a8d18c14243a.webp"
          class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Card title</h5>
          <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
          <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
        </div>
      </div>
      <div class="card border-0">
        <img src="https://black-up.kr/web/product/medium/202103/4e809b73e1a17205857594ad1c586d91.webp"
          class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Card title</h5>
          <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional
            content. This card has even longer content than the first to show that equal height action.</p>
          <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
        </div>
      </div>
    </div>

    <!-- 그룹 3 -->
    <div class="card-group">
      <div class="card border-0">
        <img src="https://black-up.kr/web/product/medium/202103/f14b5f4bab347cbf0173757dfd77be0e.webp"
          class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Card title</h5>
          <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional
            content. This content is a little bit longer.</p>
          <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
        </div>
      </div>
      <div class="card border-0">
        <img src="https://black-up.kr/web/product/medium/202103/020cdafa2bd9eebf4023a8d18c14243a.webp"
          class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Card title</h5>
          <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
          <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
        </div>
      </div>
      <div class="card border-0">
        <img src="https://black-up.kr/web/product/medium/202103/4e809b73e1a17205857594ad1c586d91.webp"
          class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Card title</h5>
          <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional
            content. This card has even longer content than the first to show that equal height action.</p>
          <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
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