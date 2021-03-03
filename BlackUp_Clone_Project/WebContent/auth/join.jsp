<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<!-- 라이브러리 설정 -->
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../css/custom.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width initial-scale=1">

<title>Black-Up-Clone</title>
</head>
<body>
	<!-- 헤더 영역  -->
	<jsp:include page="../Header.jsp" />

	<div class="container">
		<div class="col-lg-5"></div>
		<div class="col-lg-5">
			<div class="jumbtron" style="padding-top: 20px;">
				<form method="post" action="joinAction.jsp">
					<h3 style="text-align: center">회원가입</h3>
					<div class="form-group">
						아이디 <input type="text" class="form-control" placeholder="아이디"
							name="userID" maxlength="20">
					</div>
					<div class="form-group">
						비밀번호 <input type="password" class="form-control"
							placeholder="비밀전호" name="userPassword" maxlength="20">
					</div>

					<div class="form-group">
						이름 <input type="text" class="form-control" placeholder="이름"
							name="userName" maxlength="20">
					</div>
					<div class="form-group" style="text-align: center">
						<div class="btn-group" data-toggle="buttons">
							<label class="btn btn-primary active"> <input
								type="radio" name="userGender" autocomplete="off" value="male"
								checked>남자
							</label> <label class="btn btn-primary"> <input type="radio"
								name="userGender" autocomplete="off" value="female" checked>여자
							</label>
						</div>

					</div>
					<div class="form-group">
						휴대폰 번호 <input type="text" class="form-control" placeholder="휴대폰번호"
							name="userPhone" maxlength="20">
					</div>
					<div class="form-group">
						주소<br> <input id="Address" name="userAddress"
							class="form-control" placeholder="주소 검색을 눌러 입력" type="text"
							required readonly style="caret-color: transparent !important;"/>
							<input type="button" id="button" value="주소 검색" onclick="goPopup()" />

					</div>
					<input type="submit" class="btn btn-primary form-control"
						value="회원가입">
				</form>
			</div>
		</div>
		<div class="col-lg-5"></div>
	</div>
	<script>
		function goPopup() {
			// 주소검색을 수행할 팝업 페이지를 호출합니다.
			// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
			var pop = window.open("/BlackUp_Clone_Project/api/jusoPopup.jsp", "pop",
					"width=570,height=420, scrollbars=yes, resizable=yes");

			// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
			//var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
		}

		function jusoCallBack(roadFullAddr) {
			// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.	
			var AddressEl = document.querySelector("#Address");
			AddressEl.value = roadFullAddr;
			
		}
	</script>
	
	<!-- 푸터 영역  -->
	<jsp:include page="../Footer.jsp" />

</body>
</html>