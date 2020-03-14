<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Join</title>
<link rel="stylesheet" href="assets/css/login.css">
<script src="assets/js/jquery-3.4.1.min.js"></script>
<style type="text/css">
#border {
	border-bottom: 1px solid #999;
	font-size: 18px;
	color: #fff;
}

td {
	width: 100px;
	height: 45px;
}
.cancel{
width : 100px;
}


.btn-area{
	float:left;
}

#btn{
	margin-left : 10px;
	margin-right : 80px;
}

button{
	width : 160px;
		height : 50px;
		font-size : 18px;
}

#btn3 {
	display: inline-block;
		border-radius : 0px;
		background: none;
		border-bottom : 1px;
		border-color : whitegray;
		text-align: center;
		background-color : gray;
		width : 100px;
		height : 30px;
		font-size : 12px;
		color : white;
}


#check{
	position: absolute; left: 260px; top: 25px;
	font-size : 13px; color:red;
}




</style>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
	%>
	<div>
		<section class="login-form">
			<h1>JOIN</h1>
			<form action="JoinService">
				<div class="int-area" id = "f">
					<input  type="text" name="id" id="id"   autocomplete="off" required>
					<label for="id">USER ID</label>
					
				</div>

				
				<div class="int-area">
					<input type="password" name="pw" id="pw" autocomplete="off"
						required> <label for="pw">PASSWORD</label>
				</div>

				<div class="int-area">
					<input type="text" name="name" id="name" autocomplete="off"
						required> <label for="name">NAME</label>
				</div>
				<div class="int-area">
					<input type="text" name="age" id="age" autocomplete="off" required>
					<label for="age">AGE</label>
				</div>
				<div class="int-area">
					<table id=border width = '420px'>

						<tr>
							<td></td>
							<td align=right>남</td>
							<td><input type="radio" name="sex" value="남" id="sex"
								autocomplete="off" required></td>
							<td align=right>여</td>
							<td ><input type="radio" name="sex" value="여"
								autocomplete="off" required> <label for="sex">SEX</label></td>
						</tr>
					</table>
				</div>
				<br>
				<br>
				<div class="btn-area" align=center>
					<button class=submit  type="submit" id = "btn">JOIN</button>
				</div>
				<div class = "btn-area">
					<button class=submit onclick="location.href='index.jsp'">CANCEL</button>
				</div>
			</form>
			
			<span id = "chkMsg"></span>
			
			



		</section>
		
		
		
		<script type="text/javascript">
		
		$('#id').on('keyup',checkId);
		
		function checkId(){
		    var id = $('#id').val();
		    $.ajax({
		        url:'idDuplChk.do',
		        type:'post',
		        dataType : "json",
		        data:{id:id},
		        success:function(result){
		            
		        	
		        	$("#check").remove();
		          
			if (result.check == true) {
							
							$('#f').append(
									"<label id='check'>아이디가 중복되었습니다.</label>");
							/* console.log(result.check); */
						} else {
							$("#check").remove();
						}

					},
					error : function() {

					}
				});
			};
		</script>


		<script>
			let id = $('#id');
			let pw = $('#pw');
			let name = $('#name');
			let age = $('#age');
			let sex = $('#sex');
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
				} else if ($(name).val() == "") {
					$(name).next('label').addClass('warning');
					setTimeout(function() {
						$('label').removeClass('warning');
					}, 1500);
				} else if ($(age).val() == "") {
					$(age).next('label').addClass('warning');
					setTimeout(function() {
						$('label').removeClass('warning');
					}, 1500);
				} else if ($(sex).val() == "") {
					$(sex).next('label').addClass('warning');
					setTimeout(function() {
						$('label').removeClass('warning');
					}, 1500);
				}

			});
		</script>
		
		

	</div>
</body>
</html>

