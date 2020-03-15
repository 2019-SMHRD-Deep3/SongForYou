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
.scale {
   transform: scale(1);
   -webkit-transform: scale(1);
   -moz-transform: scale(1);
   -ms-transform: scale(1);
   -o-transform: scale(1);
   transition: all 0.3s ease-in-out; /* 부드러운 모션을 위해 추가*/
}

.scale:hover {
   transform: scale(1.2);
   -webkit-transform: scale(1.2);
   -moz-transform: scale(1.2);
   -ms-transform: scale(1.2);
   -o-transform: scale(1.2);
}

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

.ss {
   background: whitesmoke;
   margin: 2px;
   padding: 5px;
   list-style: none;
   padding-left: 10em;
}

.singer {
   color: pink;
   font-size: 25px;
   font-weight: bold
}

.background {
   background-color: gray !important;
   margin: 2px;
   padding: 5px;
   list-style: none;
   padding-left: 10em;
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
            
               <h2><%=info.getName() %>님의 MUSIC LIST</h2>
               <p>Ipsum volutpat consectetur orci metus consequat imperdiet
                  duis integer semper magna.</p>
            </header>
            <div class="row">
            
           <%--  <%dao.songid();%> --%>
            
            <%dao.bucketlistjoin(info.getIdnum());%>
            
            <script>
            	
            </script>
            
            
            <!--    <article class="col-4 col-12-mobile special">
                  <a href="#" class="image featured"><img src="images/pic07.jpg"
                     alt="" /></a>
                  <header>
                     <h3>
                        <a href="#">Gravida aliquam penatibus</a>
                     </h3>
                  </header>
                  <p>Amet nullam fringilla nibh nulla convallis tique ante proin
                     sociis accumsan lobortis. Auctor etiam porttitor phasellus tempus
                     cubilia ultrices tempor sagittis. Nisl fermentum consequat
                     integer interdum.</p>
               </article>
               <article class="col-4 col-12-mobile special">
                  <a href="#" class="image featured"><img src="images/pic08.jpg"
                     alt="" /></a>
                  <header>
                     <h3>
                        <a href="#">Sed quis rhoncus placerat</a>
                     </h3>
                  </header>
                  <p>Amet nullam fringilla nibh nulla convallis tique ante proin
                     sociis accumsan lobortis. Auctor etiam porttitor phasellus tempus
                     cubilia ultrices tempor sagittis. Nisl fermentum consequat
                     integer interdum.</p>
               </article>
               <article class="col-4 col-12-mobile special">
                  <a href="#" class="image featured"><img src="images/pic09.jpg"
                     alt="" /></a>
                  <header>
                     <h3>
                        <a href="#">Magna laoreet et aliquam</a>
                     </h3>
                  </header>
                  <p>Amet nullam fringilla nibh nulla convallis tique ante proin
                     sociis accumsan lobortis. Auctor etiam porttitor phasellus tempus
                     cubilia ultrices tempor sagittis. Nisl fermentum consequat
                     integer interdum.</p>
               </article> -->
            </div>
         </section>

      </div>

</body>
</html>