<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
	<!-- Web 설정 -->
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="viewport" content="width=device-width initial-scale=1" />
	<!-- JS -->
	<script src="/BlackUp_Clone_Project/js/bootstrap.min.js"></script>
	<script src="/BlackUp_Clone_Project/js/jquery-3.5.1.min.js"></script>
	<script src="/BlackUp_Clone_Project/js/popper.min.js"></script>

	<!-- CSS -->
	<link rel="stylesheet" href="/BlackUp_Clone_Project/css/bootstrap.min.css" />
	<link rel="stylesheet" href="/BlackUp_Clone_Project/css/custom.css" />

	<link rel="stylesheet" href="/BlackUp_Clone_Project/css/product.css" />

	<title>ProductForm</title>
</head>

<body>
	<!-- 상단 Navbar -->
	<jsp:include page="../../Header.jsp"></jsp:include>

	<!-- 상품 아이템 -->
	<section id="product_item">
		<div class="container d-flex justify-content-center align-items-center">
			<div class="row d-flex justify-content-center">
				<!-- 사진 영역 -->
				<div class="imageArea col-sm">
					<img src="${ product.imagePathList[0].imgPath }" class="img-fluid" alt="..." />
				</div>
				<!-- 데이터 영역 -->
				<div class="infoArea col-sm">
					<!-- 상품 정보 -->
					<table class="table">
						<thead>
							<tr>
								<th class="title text-center" scope="col" colspan="2">${ product.pdName }
								</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">Price</th>
								<td class="text-start">
									<fmt:formatNumber value="${ product.pdPrice }" type="number" />
									won
								</td>
							</tr>
							<tr>
								<th scope="row">Point</th>
								<td class="text-start">
									<fmt:parseNumber value="${ product.pdPrice / 100 }" pattern="0" /> (1%)</td>
							</tr>

							<tr>
								<th scope="row">Delivery</th>
								<td class="text-start">
									<div class="d-flex justify-content-between">
										<div class="form-check">
											<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" />
											<label class="form-check-label" for="flexRadioDefault1">
												국내 배송 </label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2"
												checked />
											<label class="form-check-label" for="flexRadioDefault2">
												해외 배송 </label>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<th scope="row">Size</th>
								<td class="text-start">
									<div class="d-flex justify-content-end">
										<select class="form-select form-select-sm" aria-label=".form-select-sm example">
											<option selected>-[필수] 옵션을 선택해 주세요 -</option>
											<c:forEach items="${ product.sizeSetList }" var="sizeSet" varStatus="vs">
												<option value="${ vs.index }">${ sizeSet.size }</option>
											</c:forEach>
										</select>
									</div>
								</td>
							</tr>
							<tr>
								<th scope="row">Color</th>
								<td class="text-start">
									<div class="d-flex justify-content-end">
										<select class="form-select form-select-sm" aria-label=".form-select-sm example">
											<option selected>-[필수] 옵션을 선택해 주세요 -</option>
											<c:forEach items="${ product.colorSetList }" var="colorSet" varStatus="vs">
												<option value="${ vs.index }">${ colorSet.color }</option>
											</c:forEach>
										</select>
									</div>
								</td>
							</tr>

							<tr>
								<th scope="row" colspan="2" class="text-center table-active">
									선택한 목록</th>
							</tr>
							<!-- 선택창 -->
							<tr>
								<th scope="row">[MADE] 리타 블루 스트레이트 데님 팬츠</th>
								<td class="text-start">S, 차콜</td>
							</tr>
							<tr>
								<th scope="row" colspan="2" class="text-center table-active">
									금액</th>
							</tr>
							<tr>
								<th scope="row">Total</th>
								<td class="text-start">32,000 won</td>
							</tr>
						</tbody>
					</table>
					<!-- 상품 버튼 -->
					<div class="d-grid gap-3">
						<button class="btn btn-dark" type="button">BUY NOW</button>
						<button class="btn btn-secondary" type="button">ADD TO
							CART</button>
						<button class="btn btn-light" type="submit">WISH LIST</button>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- 상품 설명 -->
	<section id="product_info">
		<div class="container d-flex flex-column justify-content-between">
			<img src="https://black-up.kr/web/upload/210224_sb_nr_12pt_made_01.jpg" class="img-fluid" alt="..." /> <img
				src="https://black-up.kr/web/upload/210224_sb_nr_12pt_made_02.gif" class="img-fluid" alt="..." /> <img
				src="https://black-up.kr/web/upload/210224_sb_nr_12pt_made_03.jpg" class="img-fluid" alt="..." /> <img
				src="https://black-up.kr/web/upload/210224_sb_nr_12pt_02.jpg" class="img-fluid" alt="..." />
		</div>
	</section>

	<!-- 상품 별점 -->
	<section id="product_GPA">
		<div class="container">
			<div class="row border border-1">
				<div class="col-sm">
					<p>Total : 100</p>
					<p>5 Start</p>
					<div class="progress">
						<div class="progress-bar progress-bar-striped bg-danger" role="progressbar" style="width: 80%"
							aria-valuemax="100">
							80</div>
					</div>
					<p>4 Start</p>
					<div class="progress">
						<div class="progress-bar progress-bar-striped bg-danger" role="progressbar" style="width: 10%"
							aria-valuemax="100">
							10</div>
					</div>
					<p>3 Start</p>
					<div class="progress">
						<div class="progress-bar progress-bar-striped bg-danger" role="progressbar" style="width: 5%"
							aria-valuemax="100">
							5</div>
					</div>
					<p>2 Start</p>
					<div class="progress">
						<div class="progress-bar progress-bar-striped bg-danger" role="progressbar" style="width: 0%"
							aria-valuemax="100">
							0</div>
					</div>
					<p>1 Start</p>
					<div class="progress">
						<div class="progress-bar progress-bar-striped bg-danger" role="progressbar" style="width: 0%"
							aria-valuemax="100">
							0</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<jsp:include page="../../Footer.jsp"></jsp:include>
</body>

</html>