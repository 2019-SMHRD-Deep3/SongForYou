<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Login</title>
<link rel="stylesheet" href="assets/css/login.css">
<script src="assets/js/jquery-3.4.1.min.js"></script>
<style type="text/css">

button{
width : 160px !important;
text-align : center !important;
font-size : 18px !important;
}


pre{
	color: #fff;
	text-decoration: none;
	font-weight: 300px;
}
.btn-area{
align-content: center;
}

.btn-area{
	float:left;
}

#div1{
	margin-left : 10px;
	margin-right : 80px;
}



</style>
</head>
<body>
	<section class="login-form">
		<h1>LOGIN</h1>
		<form action="LoginService" method=post>
			<div class="int-area">
				<input type="text" name="id" id="id" autocomplete="off" required>
				<label for="id">USER ID</label>
			</div>
			<div class="int-area">
				<input type="password" name="pw" id="pw" autocomplete="off" required>
				<label for="pw">PASSWORD</label>
			</div>
			<br>
			<div class = "btn-area" id = "div1">
			<button id="btn" type="submit">LOGIN</button>
			</div>
	
			
			<div class ="btn-area">
			<button id="btn" type="submit" onclick="location.href='index.jsp'">CANCEL</button>
			</div>
			
			
		
			

		</form>


	</section>
	<script>
		let id = $('#id');
		let pw = $('#pw');
		let btn = $('#btn');

		$(btn).on('click', function() {
			if ($(id).val() == "") {
				$(id).next('label').addClass('warning');
				setTimeout(function() {
					$('label').removeClass('warning');
				}, 1500);
			} else if ($(pw).val() == "") {
				$(pw).next('label').addClass('warning');
				setTimeout(function() {
					$('label').removeClass('warning');
				}, 1500);
			}
		});
	</script>
</body>
</html>