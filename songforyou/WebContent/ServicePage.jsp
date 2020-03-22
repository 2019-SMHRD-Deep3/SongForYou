<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
<style>
body{background : white}
.all{
	width:80%;
	margin:0 auto;
	text-align:center;
}
img{
	float: center !important;
}
</style>
</head>
<body>
	
	<div class="navv">
	<nav id="nav">
		<ul>
			<li class=scale><a href="index.jsp">Home</a></li>
			<li class=scale><a href="#">Mypage</a>
				<ul class=scale>
					<li class=scale><a id='mylist' href="myListPage.jsp">Mylist</a></li>
					<li class=scale><a href="mypage.jsp">Updateinfo</a></li>
				</ul></li>
			<li class=scale><a href="ServicePage.jsp">Service</a>
			<li class=scale><a href="LogoutService">Logout</a></li>
		</ul>
	</nav></div><br><br><br><br><br>
	
	<div class="all">
	<div class="intro" style="color:#FFC7BE;font-size:60px;">
	<header>Song For You</header></div><br><br>
	
	<div class="part1">
	<div class="one" style="width:200px;height:100px;float:left;text-align:right;font-size:100px;color:#FFC7BE">
	01</div>
	<div class="search" style="height:100px;float:left"> 취향에 맞는 노래를 검색해보세요<br>
	</div><br>
	<div style="text-align:center;width:60%;"><img src="images/search1.PNG"><br><br></div>
	</div>
	
	<div class="part2">
	<div class="two" style="width:200px;height:100px;float:left;text-align:right;font-size:100px;color:#FFC7BE">
	02</div>
	<div class="want" style="height:150px;float:left"> 멜로디가 유사한 노래는?</div><br>
	<div style="text-align:center;width:60%;"><img src="images/search1.PNG"><br><br></div>
	</div>
	
	<div class="part3">
	<div class="three" style="width:200px;height:100px;float:left;text-align:right;font-size:100px;color:#FFC7BE">
	03</div>
	<div class="pick" style="height:150px;float:left"> 마음에 드는 노래는 Pick!</div>
	<div style="text-align:center;width:60%;"><img src="images/search1.PNG"><br><br></div>
	</div>
	
	<div class="part4">
	<div class="four" style="width:200px;height:100px;float:left;text-align:right;font-size:100px;color:#FFC7BE">
	04</div>
	<div class="list" style="height:150px;float:left"> 나만의 리스트를 만들어보세요</div>
	</div>
	</div>
</body>
</html>