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
			<div class="jumbtron" style="padding-top:20px;">
				<form method="post" action="loginAction.jsp">
					<h3 style="text-align: center">로그인 화면</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
					</div>
					<input type="submit" class="btn btn-primary form-control" value="로그인">

					</form>
			</div>
		</div>
		<div class="col-lg-5"></div> 
	</div>
	
	<!-- 푸터 영역  -->
	<jsp:include page="../Footer.jsp" />

</body>
</html>

