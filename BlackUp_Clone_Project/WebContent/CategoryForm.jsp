<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Something in here</title>
  </head>
  <link rel="stylesheet" href="./css/bootstrap.min.css" />
  <body>
  <jsp:include page="./Header.jsp"></jsp:include>
    <header>
    <h1 class="nav justify-content-center">MADE</h1>
    </header>
    <section>
      <div>
        <ul class="nav justify-content-center">
          <li class="nav-item">
            <a class="nav-link" href="#" style="color: #000000">상의</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#" style="color: #000000">하의</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#" style="color: #000000">기타</a>
          </li>
        </ul>
      </div>

      <ul class="nav justify-content-end">
        <li class="nav-item">
          <a class="nav-link" href="#" style="color: #000000">NEW</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#" style="color: #000000">BEST</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#" style="color: #000000">NAME</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#" style="color: #000000">LOW PRICE</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#" style="color: #000000">HIGH PRICE</a>
        </li>
      </ul>
    </section>
    <!-- 오늘의 새로운 아이템 섹션 -->
    <section class="container" id="new_item">
      <h2 class="product-title text-start">Today's new item</h2>

      <!-- 그룹 -->
      <div class="card-group">
        <!-- 의상 -->
        <div class="card border-0">
          <img
            src="https://black-up.kr/web/product/medium/202102/60baee2261e478ec5bf72609fbf05243.webp"
            class="card-img-top"
            alt="..."
          />
          <div class="card-body">
            <!-- 상품 정보 -->
            <p class="text-center">[MADE] 메이킹 베이직 니트</p>
            <p class="text-center">22,800 won (1,200 won 할인)</p>
            <!-- 컬러 셋 -->
            <div
              class="colors d-flex align-items-center justify-content-center mt-1"
            >
              <span
                class="border border-light"
                style="background-color: #4bab6d"
              ></span>
              <span
                class="border border-light"
                style="background-color: #a9a9a9"
              ></span>
              <span
                class="border border-light"
                style="background-color: #000000"
              ></span>
            </div>
          </div>
        </div>
        <!-- 의상 -->
        <div class="card border-0">
          <img
            src="https://black-up.kr/web/product/medium/202103/917205722b5ae79ae5c916f98e7d3e26.webp"
            class="card-img-top"
            alt="..."
          />
          <div class="card-body">
            <!-- 상품 정보 -->
            <p class="text-center">[MADE] 리처 와이드 코튼팬츠</p>
            <p class="text-center">26,600 won (1,400 won 할인)</p>
            <!-- 컬러 셋 -->
            <div
              class="colors d-flex align-items-center justify-content-center mt-1"
            >
              <span
                class="border border-light"
                style="background-color: #feffef"
              ></span>
              <span
                class="border border-light"
                style="background-color: #c4bdb0"
              ></span>
              <span
                class="border border-light"
                style="background-color: #ada48a"
              ></span>
              <span
                class="border border-light"
                style="background-color: #474c70"
              ></span>
              <span
                class="border border-light"
                style="background-color: #000000"
              ></span>
            </div>
          </div>
        </div>
        <!-- 의상 -->
        <div class="card border-0">
          <img
            src="https://black-up.kr/web/product/medium/202102/d866bd8bb90b3f9b5a193acd0114c718.webp"
            class="card-img-top"
            alt="..."
          />
          <div class="card-body">
            <!-- 상품 정보 -->
            <p class="text-center">[MADE] 리아빅 라운드 티셔츠</p>
            <p class="text-center">15,200 won (800 won 할인)</p>
            <!-- 컬러 셋 -->
            <div
              class="colors d-flex align-items-center justify-content-center mt-1"
            >
              <span
                class="border border-light"
                style="background-color: #007543"
              ></span>
              <span
                class="border border-light"
                style="background-color: #0000fd"
              ></span>
              <span
                class="border border-light"
                style="background-color: #000000"
              ></span>
            </div>
          </div>
        </div>
      </div>

      <!-- 그룹 -->
      <div class="card-group">
        <!-- 의상 -->
        <div class="card border-0">
          <img
            src="https://black-up.kr/web/product/medium/202103/c231f5cfecca779307400aea97be961a.webp"
            class="card-img-top"
            alt="..."
          />
          <div class="card-body">
            <!-- 상품 정보 -->
            <p class="text-center">[MADE] 리타 블루 스트레이트 데님팬츠</p>
            <p class="text-center">30,400 won (1,600 won 할인)</p>
            <!-- 컬러 셋 -->
            <div
              class="colors d-flex align-items-center justify-content-center mt-1"
            ></div>
          </div>
        </div>
        <!-- 의상 -->
        <div class="card border-0">
          <img
            src="https://black-up.kr/web/product/medium/202102/2039e316a972d461ba69982333fcd242.jpg"
            class="card-img-top"
            alt="..."
          />
          <div class="card-body">
            <!-- 상품 정보 -->
            <p class="text-center">소튼 크롭 워머 후드집업</p>
            <p class="text-center">27,550 won (1,450 won 할인)</p>
            <!-- 컬러 셋 -->
            <div
              class="colors d-flex align-items-center justify-content-center mt-1"
            >
              <span
                class="border border-light"
                style="background-color: #ffffff"
              ></span>
              <span
                class="border border-light"
                style="background-color: #ebdcc5"
              ></span>
              <span
                class="border border-light"
                style="background-color: #a9a9a9"
              ></span>
              <span
                class="border border-light"
                style="background-color: #000000"
              ></span>
            </div>
          </div>
        </div>
        <!-- 의상 -->
        <div class="card border-0">
          <img
            src="https://black-up.kr/web/product/medium/202102/5b212d137950702492d28b20a595dcd8.jpg"
            class="card-img-top"
            alt="..."
          />
          <div class="card-body">
            <!-- 상품 정보 -->
            <p class="text-center">덴디 핀턱 슬랙스</p>
            <p class="text-center">22,800 won (1,200 won 할인)</p>
            <!-- 컬러 셋 -->
            <div
              class="colors d-flex align-items-center justify-content-center mt-1"
            >
              <span
                class="border border-light"
                style="background-color: #ebe7d6"
              ></span>
              <span
                class="border border-light"
                style="background-color: #787878"
              ></span>
              <span
                class="border border-light"
                style="background-color: #000000"
              ></span>
            </div>
          </div>
        </div>
      </div>

      <!-- 그룹 -->
      <div class="card-group">
        <!-- 의상 -->
        <div class="card border-0">
          <img
            src="https://black-up.kr/web/product/medium/202103/41a102d2583ad33b76613a8ad5ff4f36.webp"
            class="card-img-top"
            alt="..."
          />
          <div class="card-body">
            <!-- 상품 정보 -->
            <p class="text-center">(UNISEX) 아넷 오버핏 브이넥니트</p>
            <p class="text-center">24,700 won (1,300 won 할인)</p>
            <!-- 컬러 셋 -->
            <div
              class="colors d-flex align-items-center justify-content-center mt-1"
            >
              <span
                class="border border-light"
                style="background-color: #4bab6d"
              ></span>
              <span
                class="border border-light"
                style="background-color: #a9a9a9"
              ></span>
              <span
                class="border border-light"
                style="background-color: #000000"
              ></span>
            </div>
          </div>
        </div>
        <!-- 의상 -->
        <div class="card border-0">
          <img
            src="https://black-up.kr/web/product/medium/202103/f14b5f4bab347cbf0173757dfd77be0e.webp"
            class="card-img-top"
            alt="..."
          />
          <div class="card-body">
            <!-- 상품 정보 -->
            <p class="text-center">[MADE] 메이킹 베이직 니트</p>
            <p class="text-center">22,800 won (1,200 won 할인)</p>
            <!-- 컬러 셋 -->
            <div
              class="colors d-flex align-items-center justify-content-center mt-1"
            >
              <span
                class="border border-light"
                style="background-color: #4bab6d"
              ></span>
              <span
                class="border border-light"
                style="background-color: #a9a9a9"
              ></span>
              <span
                class="border border-light"
                style="background-color: #000000"
              ></span>
            </div>
          </div>
        </div>
        <!-- 의상 -->
        <div class="card border-0">
          <img
            src="https://black-up.kr/web/product/medium/202103/020cdafa2bd9eebf4023a8d18c14243a.webp"
            class="card-img-top"
            alt="..."
          />
          <div class="card-body">
            <!-- 상품 정보 -->
            <p class="text-center">[MADE] 메이킹 베이직 니트</p>
            <p class="text-center">22,800 won (1,200 won 할인)</p>
            <!-- 컬러 셋 -->
            <div
              class="colors d-flex align-items-center justify-content-center mt-1"
            >
              <span
                class="border border-light"
                style="background-color: #4bab6d"
              ></span>
              <span
                class="border border-light"
                style="background-color: #a9a9a9"
              ></span>
              <span
                class="border border-light"
                style="background-color: #000000"
              ></span>
            </div>
          </div>
        </div>
      </div>
    </section>
    <footer>Footer 영역</footer>

    <script src="./js/jquery-3.5.1.min.js"></script>
    <script src="./js/popper.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>
  </body>
</html>
