<%@page import="model.MusicDTO"%>
<%@page import="model.MusicBucketDAO"%>
<%@page import="model.MusicBucketDTO"%>
<%@page import="model.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
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

#input {
   width: 50%;
   height: 60px;
}
.hide {
	color: white;
}
#search {
   background-color: pink;
   !important;
}

p {
   margin: 0px auto;
   text-align: center;
}

#nav {
   position: fixed;
}

.width {
   width: 400px !important;
}

form {
   margin-left: 300px;
}
.bin {
	position : absolut !important;
	background-color : white !important;
}

table {
    width: 100%;
    border-top: 1px solid #444444;
    border-collapse: collapse;
    text-align : center;
  }
th, td {
    border-bottom: 1px solid #444444;
    padding: 10px;
  }
body{
	background: #FFFFFF !important;
	color: #5b5b5b;
	}
	
input{
	-webkit-appearance: meter;
	
}
modal-table{
	display:table;
	position:relative;
	width:100%;
	height:200px;
	}
</style>
</head>
<body>
   <%
      MemberDTO info = (MemberDTO)session.getAttribute("info");
      MusicBucketDAO dao = new MusicBucketDAO();
      
   	  MusicDTO dto = null; 
   %>
<div class="wrapper style1">
	<nav id="nav">
			<ul>
				<li class=scale><a href="index.jsp">Home</a></li>
				<li class=scale><a href="#">Mypage</a>
					<ul class=scale>
						<li class=scale><a id='mylist' href="myListPage.jsp">Mylist</a></li>
						<li class=scale><a href="mypage.jsp">Updateinfo</a></li>
					</ul></li>
				<li class=scale><a href="Service">Service</a> <li class=scale>
			<a
					href="LogoutService">Logout</a></li></ul>
		</nav>

         <section id="features" class="container special">
            <header>
            
               <h2><%=info.getName() %>님의 MUSIC LIST</h2><br><br>

            </header>
            <div class="row">

			<button type="button" class="bin">
				<img class='bin2' src="images/trash.png" width=50px height=50px>
			</button><br><br>
			<table class = "track">
				<thead>
				<tr bgcolor=#f0f4f4>
					<th scope="col">
						<input type="checkbox" class="Allselect" id="Allselect" name="all">
					</th>
					<th scope="col" class="info" colspan=2>곡/앨범</th>
					<th scope="col" class="artist">아티스트</th>
					<th scope="col">듣기</th>
					<th scope="col"></th>
				</tr></thead>
			   <tbody id="ttt">
            <%try{
               if (dao.alltitle(dao.songid(info.getIdnum())).isEmpty()){
               %>
               		
               
               <% }
               else{for(int i = 0; i<dao.alltitle(dao.songid(info.getIdnum())).size();i++){ %>
               <tr>
                  <td><input type="checkbox" class="selectt" name="determine"></td>
                  <td align=right><img src = <%= dao.alltitle(dao.songid(info.getIdnum())).get(i).getimg()%> width=50 height=50></td>
                  <td class=vvv align=left><%= dao.alltitle(dao.songid(info.getIdnum())).get(i).gettitle()%></td>
                  <td calss=vvv><%= dao.alltitle(dao.songid(info.getIdnum())).get(i).getSinger()%></td>         
                  <td><img src = 'images/pinkplay.png' width=30px height=30px></td>
                  <td class=hide><%=dao.songid(info.getIdnum()).get(i).getBucketid()%></td>         
               </tr><%}}}catch(IndexOutOfBoundsException e){
                  e.printStackTrace();
                  %>
                  <!-- <div><table><tr><td></td><td></td><td></td><td></td><td></td><td></td></tr></table></div> -->
                  <%} %>
               
            </tbody>   		
			</table>
            </div>
         </section>
      </div>      
    <script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
      <script>
     	$("#Allselect").on('click',function(){
 		if($("#Allselect").prop("checked")){
 			$(".selectt").prop("checked",true);
 		}else{
 			$(".selectt").prop("checked",false);
 		}
 	});
 	
 	
 	
 	
/* 	$('.bin').on('click',function(){
  		var data = [];
  		
  		if($('input[name=select]:checked')){
  			data.push($('input[name=select]:checked').parent().next().next().text());
  		}
  		console.log(data);
		$.ajax({
 			url : "MylistService.do",
 			type : 'post',
 			data:{'data' : data}
		
		}) 
		data = [];
 	}); */

      </script>
      <script>
		$('.bin2').on(
				'click',
				function() {

					var s = [];
					var d = [];

					var Allselect = $('.Allselect').val();
					var selectt = $('.selectt').val();

					var titles = $('input[name=determine]:checked').parent().next().next().text();
					var singers = $('input[name=determine]:checked').parent().next().next().next().text();
					var id = $('input[name=determine]:checked').parent().next().next().next().next().next().text();
					
					if ($("input[name='all']").prop("checked")){
						$.ajax({
						    type : 'post',
						    url : 'AllDelete', 
						    dataType : 'text',
						    success : function(result) { // 결과 성공 콜백함수
						        console.log(result);
						    $('#ttt').empty();
						    },
						    error : function(request, status, error) { // 결과 에러 콜백함수
						        console.log(error)
						    }
						});
						window.location.href="myListPage.jsp";
					}else if ($("input[name='all']").prop("checked",false)){
					$.ajax({
						
						type : 'post',
						url : 'Delete',
						data : {'id':id},
						success : function(result) {
							
							alert("성공");
							
							
						},
						error : function(request, status, error) { // 결과 에러 콜백함수
							console.log(error)
						}
						
					});}
					window.location.href="myListPage.jsp";
				});
	</script>
</body>
</html>