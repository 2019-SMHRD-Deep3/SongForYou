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

/* The Modal (background) */
.searchModal {
display: none; /* Hidden by default */
position: fixed; /* Stay in place */
z-index: 10; /* Sit on top */
left: 0;
top: 0;
width: 100%; /* Full width */
height: 100%; /* Full height */
overflow: auto; /* Enable scroll if needed */
background-color: rgb(0,0,0); /* Fallback color */
background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}
/* Modal Content/Box */
.search-modal-content {
background-color: #fefefe;
margin: 15% auto; /* 15% from the top and centered */
padding: 20px;
border: 1px solid #888;
width: 18%; /* Could be more or less, depending on screen size */
height : 58%;
}


#input {
   width: 25%;
   height: 50px;
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
.bin2 {
	position : relative !important;
	left : 118px;
	background-color : white !important;
	height : 45 !important;
}


table {
    width: 80%;
    /* border-bottom: 1px solids; */
    border-collapse: collapse;
    text-align : center;
    
  }
 
  
th, td {    
    padding: 10px;
    vertical-align: middle;
  }
th {
	border-bottom : #EAEAEA;
	font-weight: bold;
}
   
td {
	border-bottom : 1px solid;
	border-color : #EAEAEA;
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

.info, .artist, .listen	{
	font-weight : 10px;}

.play {
	background-color: #FFFFFF !important;

}
.tableline {
	border-bottom: 1px solid #EAEAEA !important;
}

#singerr {
	color: #E8847B; 
	
	font-weight: bold;
}
.emptyspace{
width : 1%;
}

</style>
</head>
<body>
   <%
      MemberDTO info = (MemberDTO)session.getAttribute("info");
      MusicBucketDAO dao = new MusicBucketDAO();
      
   	  MusicDTO dto = null; 
   	  int cnt=0;
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
				<li class=scale><a href="ServicePage.jsp">Service</a> <li class=scale>
			<a href="LogoutService">Logout</a></li></ul>
		</nav>

         <section id="features" class="container special">
            <header>
               <h2 align=center><%=info.getName() %>님의 MUSIC LIST</h2>
			</header>
				  <img class='bin2' src="images/trash.png" width=50px height=50px><br><br>
			<div class="row">		
           
			<table class = "track" style="margin-left: auto; margin-right: auto;">
			<br><br>
				<thead>

				<tr bgcolor=#FFC7BE class="tableline" style = 'border-bottom: 1px solid #FAE0D4;'>
					<th scope="col">
						<input type="checkbox" class="Allselect" id="Allselect" name="all">
					</th>
					<th scope="col" class="info" colspan=2>곡/앨범</th>
					<th scope="col" class="artist">아티스트</th>

					<th scope="col">듣기</th>
					<th class='emptyspace' scope="col"></th>

				</tr></thead>
			   <tbody id="ttt">
            <%try{
               if (dao.alltitle(dao.songid(info.getIdnum())).isEmpty()){
               %>
               		
               
               <% }
               else{for(int i = 0; i<dao.alltitle(dao.songid(info.getIdnum())).size();i++){ %>
               <tr>
                  <td width=30><input type="checkbox" class="selectt" name="determine<%=i%>"></td>
                  <td align=right width=80><img src = <%= dao.alltitle(dao.songid(info.getIdnum())).get(i).getimg()%> width=50 height=50></td>

                  <td id=title class=vvv align=left width=200><%= dao.alltitle(dao.songid(info.getIdnum())).get(i).gettitle()%></td>
                  <td id=singer class=vvv width=100><%= dao.alltitle(dao.songid(info.getIdnum())).get(i).getSinger()%></td>         
                  <td width=100 id="here"><img src = 'images/btnplay.png' width=40px height=40px id="musicplay"></td>
                  <td class="hide<%=i %>" width=10 id="<%=dao.songid(info.getIdnum()).get(i).getBucketid()%>" ><%cnt++; %></td>         
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
	<div id="modal" class="searchModal">
		<div class="search-modal-content">
		
			
					<img src='images/ZICO.jpg'  style = 'width : 300px; height : 300px;' alt="" ><br><br>
				<div align = 'center'> 아무노래 </div>
				<div align = 'center' id = 'singerr'> ZICO</div>
			<br>
			<audio id = 'auau' controls><source src="
    		    	      			  music/지코-아무노래.mp3
    		    	      			  " type='audio/ogg'></audio>

				<br id = 'eee'><br>
					
				
		
			
			<div
				style="cursor: pointer; background-color: #999999; text-align: center; width : 100%; height : 50px;"
				onClick="closeModal();"><img src = "images/xxx.png" style = 'width : 50px; height : 50px;'>
			</div>
		</div>
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
      $('#musicplay').on('click',function(){
    	  
    	  /* window.open('MusicPlayer.jsp','뮤직플레이어','width=430,height=500,location=no,status=no'); */
    	  var title = $('#title').text();
    	  var singer = $('#singer').text();
    	  console.log(title);
    	  console.log(singer);

    	  $("#modal").show();
    	  
    	 

    		
    	 /* 	$.ajax({
    			url : "http://localhost:8088/secondproject/MusicPlayer.jsp",
    			type : 'post',
    			dataType : "json",
    			data : {'title':title, 'singer':singer},
    			success : function(result){ */
    		    	/*   $('#musicplay').remove();
    		    	  $('#here').append("<audio controls><source src="
    		    	      			  +result+
    		    	      			  " type='audio/ogg'></audio>");
    		    	  console.log(result); */
    		/* 	}
    		})  */
      })
      
							function closeModal() {
    	 						
								$('.searchModal').hide();
							};
							
							$('.bin2')
									.on(
											'click',
											function() {

												var id = [];
												var d = [];
												<%int k=0;%>
												var Allselect = $('.Allselect')
														.val();
												var selectt = $('.selectt')
														.val();

												var titles = $(
														'input[name=determine]:checked')
														.parent().next().next()
														.text();
												var singers = $(
														'input[name=determine]:checked')
														.parent().next().next()
														.next().text();
												

												if ($("input[name='all']")
														.prop("checked")) {
													$
															.ajax({
																type : 'post',
																url : 'AllDelete',
																dataType : 'text',
																success : function(
																		result) { // 결과 성공 콜백함수
																	console
																			.log(result);
																	$('#ttt')
																			.empty();
																},
																error : function(
																		request,
																		status,
																		error) { // 결과 에러 콜백함수
																	console
																			.log(error)
																}
															});
													window.location.href = "myListPage.jsp";
												} else if ($(
														"input[name='all']")
														.prop("checked", false)) {
													
													for(var i=0;i<<%=cnt%>;i++){
														
														if($("input[name=determine"+i+"]").prop("checked")){
															
															id.push($('.hide'+i).attr("id"));
															
															
														}
													}
													
													
													
													$.ajaxSettings.traditional = true;
													$.ajax({
														
														type : 'post',
														url : 'Delete',
														data : {
															'id' : id
														},
														success : function(
																result) {

															alert("성공");

														},
														error : function(
																request,
																status, error) { // 결과 에러 콜백함수
														}

													});
												}
												window.location.href = "myListPage.jsp";
											});
						</script>
</body>
</html>

