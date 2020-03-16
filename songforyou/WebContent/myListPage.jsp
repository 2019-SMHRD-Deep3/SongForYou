<%@page import="model.MusicDTO"%>
<%@page import="model.MusicBucketDAO"%>
<%@page import="model.MemberDTO"%>
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

         <section id="features" class="container special">
            <header>
            
               <h2><%=info.getName() %>님의 MUSIC LIST</h2><br><br>

            </header>
            <div class="row">

			<button type="button" class="bin">
				<img src="images/trash.png" width=50px height=50px>
			</button><br><br>
			<table class = "track">
				<thead>
				<tr bgcolor=#f0f4f4>
					<th scope="col">
						<input type="checkbox" id="Allselect">
					</th>
					<th scope="col" class="info" colspan=2>곡/앨범</th>
					<th scope="col" class="artist">아티스트</th>
					<th scope="col">듣기</th>
				</tr></thead>
				<tbody>
					<%for(int i = 0; i<dao.alltitle(dao.songid(info.getIdnum())).size();i++){ %>
					<tr>
						<td><input type="checkbox" name="select" class="selectt"></td>
						<td align=right><img src = <%= dao.alltitle(dao.songid(info.getIdnum())).get(i).getimg()%> width=50 height=50></td>
						<td align=left><%= dao.alltitle(dao.songid(info.getIdnum())).get(i).gettitle()%></td>
						<td><%= dao.alltitle(dao.songid(info.getIdnum())).get(i).getSinger()%></td>			
						<td></td>			
					</tr><%} %>
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
 	})
 	
  	$('.bin').on('click',function(){
 		$.ajax({
 			url : ""
 		})
 	})

      </script>
</body>
</html>