<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정</title>
<script src="./js/bootstrap.min.js"></script>
<script src="./js/jquery-3.5.1.min.js"></script>

<link rel="stylesheet" href="./css/bootstrap.min.css">
</head>
<body>
	<div class="jumbotron" style=""padding top:-20px;">
		<h3 style="text-align:center;">회원정보 수정</h3>
		<div class="form-group">
			<input type="text" class="form-control" placeholder="아이디" name="userID" value="<>"readonly>
		</div>	
		<div>
			<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20" value="">
		</div>	
		<div>
			<input type="text" class="form-control" placeholder="이름" name="uesrName" value="">
		</div>
		<div>
			<input type="text" class="form-control" placeholder="주소" name="userAddress" value="">
		</div>
		<div>
		    <input type="text" class="form-control" placeholder="전화번호" name="userPhone" value="">
		</div>
				<div class="form-group" style="text-align: center;">
					<div class="btn-group" data-toggle="buttons">
							<%
							if(user.getUserSex().equals("MAN")){
								System.out.println("userUpdate:user.getUserGende_inside 1 : " + user.getUserSex());
							%>
								<label class="btn btn-primary active">
							<% }else {
								System.out.println("userUpdate:user.getUserGender_inside 2 : " + user.getUserSex());
							%>
								<label class="btn btn-primary">
							<%}%>
						
							
							<input type="radio" name="userGender" autoComplete="off" value="MAN" checked>남자
						</label>
						
							<%
							if(user.getUserGender().equals("WOMAN")){ 
								System.out.println("userUpdate:user.getUserGender_inside 3 : " + user.getUserGender());
							%>
								<label class="btn btn-primary active">
							<% }else {
								System.out.println("userUpdate:user.getUserGender_inside 4 : " + user.getUserGender());
							%>
								<label class="btn btn-primary">
							<%}%>
						
							<input type="radio" name="userGender" autoComplete="off" value="WOMAN" checked>여자
						</label>
					</div>
				</div>
				<div class="form-group">
					<input type="email" class="form-control" placeholder="이메일" name="userEmail" maxlength="50" value="<%=user.getUserEmail()%>">
				</div>
				<input type="submit" class="btn btn-primary form-control" value="수정완료">
			</form>
		</div>
		<div class="col-lg-4"></div>
	</div>
	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>
		
		
	

</body>
</html>