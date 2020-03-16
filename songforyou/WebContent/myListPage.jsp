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

/* .ss {
   background: whitesmoke;
   margin: 2px;
   padding: 5px;
   list-style: none;
   padding-left: 10em;
}
 */

/* .background {
   background-color: gray !important;
   margin: 2px;
   padding: 5px;
   list-style: none;
   padding-left: 10em;
} */
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
            
               <h2><%=info.getName() %>님의 MUSIC LIST</h2><br><br><br>

            </header>
            <div class="row">


			<table class = "track">
<!-- 				<colgroup>
					<col width="42" data-cell="체크박스">
					<col width="*" data-cell="곡/앨범">
					<col width="250" data-cell="아티스트">
					<col width="65" data-cell="듣기">
				</colgroup> -->
				<thead>
				<tr>
					<th scope="col">
						<input type="checkbox" name="selectAll" id="detailAllselect" value="true">
				 	<label for="detailAllselect">
							<span class="hidden"></span>
						</label>
					</th>
					<th scope="col" class="info" colspan=2>곡/앨범</th>
					<th scope="col" class="artist">아티스트</th>
					<th scope="col">듣기</th>
				</tr></thead>
				<tbody>
					<%for(int i = 0; i<dao.alltitle(dao.songid(info.getIdnum())).size();i++){ %>
					<tr>
						<td><input type="checkbox" name="select"></td>
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

</body>
</html>