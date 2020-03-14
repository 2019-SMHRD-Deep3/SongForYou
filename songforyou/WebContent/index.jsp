<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<!--
	Helios by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>당신의 취향을 위한 우리는 쏭뽀유</title>
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
	!
	important;
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

.sj:hover {
	background-color: #FBC7BE;

}

.cart {
	position: absolute !important;
	background-color: empty !important;
}


.gray {
	width : 30px;
	height : 30px;

  }
  
.btn_img{
width : 30px;
	height : 30px;
}
.b{
background-color:white;
}





</style>
</head>
<body class="homepage is-preload">
	<%
		MemberDTO info = (MemberDTO) session.getAttribute("info");
	%>


	<!-- Header -->
	<div id="page-wrapper">
		<%
			if (info == null) {
		%>
		<div id="header">

			<!-- Inner -->
			<div class="inner">


				<header>
					<h1>
						<a href="index.jsp" id="logo">쏭뽀유</a>
					</h1>
					<hr class=width>


					<p>당신의 노래를 찾아보세요!</p>
				</header>

				<footer>


					<table>
						<tr>
							<td><input type=button value=Login
								onClick="location.href='loginpage.jsp'"></td>
							<td><pre>             </pre></td>
							<td><input type=button value="Join  "
								onClick="location.href='joinpage1.jsp'"></td>
						</tr>
					</table>



				</footer>



			</div>



			<!-- Nav -->
			<nav id="nav">
				<ul id=follow>
					<li><a href="index.jsp">Home</a></li>
					<li><a href="#">Dropdown</a>
						<ul>
							<li><a href="#">Lorem ipsum dolor</a></li>
							<li><a href="#">Magna phasellus</a></li>
							<li><a href="#">Etiam dolore nisl</a></li>
							<li><a href="#">And a submenu &hellip;</a>
								<ul>
									<li><a href="#">Lorem ipsum dolor</a></li>
									<li><a href="#">Phasellus consequat</a></li>
									<li><a href="#">Magna phasellus</a></li>
									<li><a href="#">Etiam dolore nisl</a></li>
								</ul></li>
							<li><a href="#">Veroeros feugiat</a></li>
						</ul></li>
					<li><a href="left-sidebar.html">Left Sidebar</a></li>
					<li><a href="right-sidebar.html">Right Sidebar</a></li>
					<li><a href="no-sidebar.html">No Sidebar</a></li>
				</ul>
			</nav>
		</div>
		<%
			}
		%>
		<%
			if (info != null) {
		%>
		<!--nav  -->
		<nav id="nav">
			<ul>
				<li class=scale><a href="index.jsp">Home</a></li>
				<li class=scale><a href="#">Mypage</a>
					<ul class=scale>
						<li class=scale><a href="MylistService">Mylist</a></li>
						<li class=scale><a href="mypage.jsp">Updateinfo</a></li>
					</ul></li>
				<li class=scale><a href="LogoutService">Logout</a></li>
			</ul>
		</nav>
		<!-- Banner -->
		<section id="banner">
			<br>
			<header id="colors">
				<h2>
					<%=info.getName()%>님 <strong>쏭뽀유</strong>를 이용하고 계십니다.
				</h2>

				<form action="#">
					<br>

					<table id="table">
						<tr>
							<td align=right><input id=inputt type=text
								placeholder="노래를 입력해 주세요." autocomplete=off></td>
							<td align=left><input id=search type="button" value=검색></td>
						</tr>

					</table>


				</form>



			</header>


		</section>





		<%
			}
		%>
		<!-- Carousel -->
		<section class="carousel">

			<div class="reel">
				<button align="center" type="button" class="cart" id="cartt">
					<img src="images/record.png" width="30px" height="30px">
				</button>
				<br> <br>


				<article class="sj">
					<a href="#" class="image featured"> <img src="images/pic01.jpg"
						alt="" /></a>
					<header>
						<h3> 
						<input src = 'images/addgray.png' class="gray" type = "image" border="0" name = "add" >	
						</h3>
					</header>
					<p>Commodo id natoque malesuada sollicitudin elit suscipit
						magna.</p>
				</article>

				<article class="sj">
					<a href="#" class="image featured"><img src="images/pic02.jpg"
						alt="" /></a>
					<header>
						<h3>
								<input src = 'images/addgray.png' class="gray" type = "image" border="0" name = "add" >	
						</h3>
					</header>
					<p>Commodo id natoque malesuada sollicitudin elit suscipit
						magna.</p>
				</article>

				<article class="sj">
					<a href="#" class="image featured"><img src="images/pic03.jpg"
						alt="" /></a>
					<header>
						<h3>
								<input src = 'images/addgray.png' class="gray" type = "image" border="0" name = "add" >	
						</h3>
					</header>
					<p>Commodo id natoque malesuada sollicitudin elit suscipit
						magna.</p>
				</article>

				<article class="sj">
					<a href="#" class="image featured"><img src="images/pic04.jpg"
						alt="" /></a>
					<header>
						<h3>
								<input src = 'images/addgray.png' class="gray" type = "image" border="0" name = "add" >	
						</h3>
					</header>
					<p>Commodo id natoque malesuada sollicitudin elit suscipit
						magna.</p>
				</article>

				<article class="sj">
					<a href="#" class="image featured"><img src="images/pic05.jpg"
						alt="" /></a>
					<header>
						<h3>
								<input src = 'images/addgray.png' class="gray" type = "image" border="0" name = "add" >	
						</h3>
					</header>
					<p>Commodo id natoque malesuada sollicitudin elit suscipit
						magna.</p>
				</article>

				<article class="sj">
					<a href="#" class="image featured"><img src="images/pic01.jpg"
						alt="" /></a>
					<header>
						<h3>
								<input src = 'images/addgray.png' class="gray" type = "image" border="0" name = "add" >	
						</h3>
					</header>
					<p>Commodo id natoque malesuada sollicitudin elit suscipit
						magna.</p>
				</article>

				<article class="sj">
					<a href="#" class="image featured"><img src="images/pic02.jpg"
						alt="" /></a>
					<header>
						<h3>
								<input src = 'images/addgray.png' class="gray" type = "image" border="0" name = "add" >	
						</h3>
					</header>
					<p>Commodo id natoque malesuada sollicitudin elit suscipit
						magna.</p>
				</article>

				<article class="sj">
					<a href="#" class="image featured"><img src="images/pic03.jpg"
						alt="" /></a>
					<header>
						<h3>
								<input src = 'images/addgray.png' class="gray" type = "image" border="0" name = "add" >	
						</h3>
					</header>
					<p>Commodo id natoque malesuada sollicitudin elit suscipit
						magna.</p>
				</article>

				<article class="sj">
					<a href="#" class="image featured"><img src="images/pic04.jpg"
						alt="" /></a>
					<header>
						<h3>
								<input src = 'images/addgray.png' class="gray" type = "image" border="0" name = "add" >	
						</h3>
					</header>
					<p>Commodo id natoque malesuada sollicitudin elit suscipit
						magna.</p>
				</article>

				<article class="sj">
					<a href="#" class="image featured"><img src="images/pic05.jpg"
						alt="" /></a>
					<header>
						<h3>
							<input src = 'images/addgray.png' class="gray" type = "image" border="0" name = "add" >	
						</h3>
					</header>
					<p>Commodo id natoque malesuada sollicitudin elit suscipit
						magna.</p>
				</article>

<!-- 				<script>
					var gray = document.querySelector('.gray');
					var sj = document.querySeletor('.sj');
					
					gray.onclick = function() {
						/* Math.floor(Math.random() * 256); */
						var red = 251;
						var blue = 190;
						var green = 199;

						sj.style.backgroundColor = "rgb(" + red + "," + green+ "," + blue + ")";
					};
					
				</script> -->
				
				
<!-- 				<script>
				$('.gray').on('click', function() {
					var red = 251;
					var blue = 190;
					var green = 199;
					var sj = $('.sj');
					sj.style.backgroundColor = "rgb(" + red + "," + green+ "," + blue + ")";
					
					$.ajax({
						url : "myListPage.jsp",
						type : 'post',
						dataType : "json",
						data : {},
						success : function(result) {
						

						}
					})
				})
				
				</script> -->
				
		





			</div>
		</section>

		<!-- Main -->
		<div class="wrapper style2">

			<article id="main" class="container special">
				<a href="#" class="image featured"><img src="images/pic06.jpg"
					alt="" /></a>
				<header>
					<h2>
						<a href="#">Sed massa imperdiet magnis</a>
					</h2>
					<p>Sociis aenean eu aenean mollis mollis facilisis primis
						ornare penatibus aenean. Cursus ac enim pulvinar curabitur morbi
						convallis. Lectus malesuada sed fermentum dolore amet.</p>
				</header>
				<p>Commodo id natoque malesuada sollicitudin elit suscipit.
					Curae suspendisse mauris posuere accumsan massa posuere lacus
					convallis tellus interdum. Amet nullam fringilla nibh nulla
					convallis ut venenatis purus sit arcu sociis. Nunc fermentum
					adipiscing tempor cursus nascetur adipiscing adipiscing. Primis
					aliquam mus lacinia lobortis phasellus suscipit. Fermentum lobortis
					non tristique ante proin sociis accumsan lobortis. Auctor etiam
					porttitor phasellus tempus cubilia ultrices tempor sagittis. Nisl
					fermentum consequat integer interdum integer purus sapien. Nibh
					eleifend nulla nascetur pharetra commodo mi augue interdum tellus.
					Ornare cursus augue feugiat sodales velit lorem. Semper elementum
					ullamcorper lacinia natoque aenean scelerisque.</p>
				<footer>
					<a href="#" class="button">Continue Reading</a>
				</footer>
			</article>

		</div>

		<!-- Features -->


		<!-- Footer -->
		<div id="footer">
			<div class="container">
				<div class="row">

					<!-- Tweets -->
					<section class="col-4 col-12-mobile">
						<header>
							<h2 class="icon brands fa-twitter circled">
								<span class="label">Tweets</span>
							</h2>
						</header>
						<ul class="divided">
							<li>
								<article class="tweet">
									Amet nullam fringilla nibh nulla convallis tique ante sociis
									accumsan. <span class="timestamp">5 minutes ago</span>
								</article>
							</li>
							<li>
								<article class="tweet">
									Hendrerit rutrum quisque. <span class="timestamp">30
										minutes ago</span>
								</article>
							</li>
							<li>
								<article class="tweet">
									Curabitur donec nulla massa laoreet nibh. Lorem praesent
									montes. <span class="timestamp">3 hours ago</span>
								</article>
							</li>
							<li>
								<article class="tweet">
									Lacus natoque cras rhoncus curae dignissim ultricies. Convallis
									orci aliquet. <span class="timestamp">5 hours ago</span>
								</article>
							</li>
						</ul>
					</section>

					<!-- Posts -->
					<section class="col-4 col-12-mobile">
						<header>
							<h2 class="icon solid fa-file circled">
								<span class="label">Posts</span>
							</h2>
						</header>
						<ul class="divided">
							<li>
								<article class="post stub">
									<header>
										<h3>
											<a href="#">Nisl fermentum integer</a>
										</h3>
									</header>
									<span class="timestamp">3 hours ago</span>
								</article>
							</li>
							<li>
								<article class="post stub">
									<header>
										<h3>
											<a href="#">Phasellus portitor lorem</a>
										</h3>
									</header>
									<span class="timestamp">6 hours ago</span>
								</article>
							</li>
							<li>
								<article class="post stub">
									<header>
										<h3>
											<a href="#">Magna tempus consequat</a>
										</h3>
									</header>
									<span class="timestamp">Yesterday</span>
								</article>
							</li>
							<li>
								<article class="post stub">
									<header>
										<h3>
											<a href="#">Feugiat lorem ipsum</a>
										</h3>
									</header>
									<span class="timestamp">2 days ago</span>
								</article>
							</li>
						</ul>
					</section>

					<!-- Photos -->
					<section class="col-4 col-12-mobile">
						<header>
							<h2 class="icon solid fa-camera circled">
								<span class="label">Photos</span>
							</h2>
						</header>
						<div class="row gtr-25">
							<div class="col-6">
								<a href="#" class="image fit"><img src="images/pic10.jpg"
									alt="" /></a>
							</div>
							<div class="col-6">
								<a href="#" class="image fit"><img src="images/pic11.jpg"
									alt="" /></a>
							</div>
							<div class="col-6">
								<a href="#" class="image fit"><img src="images/pic12.jpg"
									alt="" /></a>
							</div>
							<div class="col-6">
								<a href="#" class="image fit"><img src="images/pic13.jpg"
									alt="" /></a>
							</div>
							<div class="col-6">
								<a href="#" class="image fit"><img src="images/pic14.jpg"
									alt="" /></a>
							</div>
							<div class="col-6">
								<a href="#" class="image fit"><img src="images/pic15.jpg"
									alt="" /></a>
							</div>
						</div>
					</section>

				</div>
				<hr />
				<div class="row">
					<div class="col-12">

						<!-- Contact -->
						<section class="contact">
							<header>
								<h3>Nisl turpis nascetur interdum?</h3>
							</header>
							<p>Urna nisl non quis interdum mus ornare ridiculus egestas
								ridiculus lobortis vivamus tempor aliquet.</p>
							<ul class="icons">
								<li><a href="#" class="icon brands fa-twitter"><span
										class="label">Twitter</span></a></li>
								<li><a href="#" class="icon brands fa-facebook-f"><span
										class="label">Facebook</span></a></li>
								<li><a href="#" class="icon brands fa-instagram"><span
										class="label">Instagram</span></a></li>
								<li><a href="#" class="icon brands fa-pinterest"><span
										class="label">Pinterest</span></a></li>
								<li><a href="#" class="icon brands fa-dribbble"><span
										class="label">Dribbble</span></a></li>
								<li><a href="#" class="icon brands fa-linkedin-in"><span
										class="label">Linkedin</span></a></li>
							</ul>
						</section>

						<!-- Copyright -->
						<div class="copyright">
							<ul class="menu">
								<li>&copy; Untitled. All rights reserved.</li>
								<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
							</ul>
						</div>

					</div>

				</div>
			</div>
		</div>

	</div>

	<!-- Scripts -->


	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

	<script>
		String.prototype.replaceAll = function(org, dest) {
			return this.split(org).join(dest);
		}
	</script>

	<script>
		$('#inputt').on('keyup', checkMusic);
		var ff=[];
		var li;
		var liSelected;
		function checkMusic(e) {
			var selected;
			if (e.which === 40) {

				console.log("길이 : " + li.length);
				console.log('40번')
				if (liSelected) {

					liSelected.removeClass('background');
					next = liSelected.next();
					if (next.length > 0) {
						liSelected = next.addClass('background');
						selected = next.text();

					} else {
						liSelected = li.eq(0).addClass('background');
						selected = li.eq(0).text();
					}
				} else {

					liSelected = li.eq(0).addClass('background');
					selected = li.eq(0).text();
				}
			} else if (e.which === 38) {
				if (liSelected) {
					liSelected.removeClass('background');
					next = liSelected.prev();
					console.log(next.zzClass())
					if (next.length > 0) {
						liSelected = next.addClass('background');
						selected = next.text();

					} else {
						console.log("라스트");
						liSelected = li.last().addClass('background');
						selected = li.last().text()
					}
				} else {

					liSelected = li.last().addClass('background');
					selected = li.last().text()
				}
			} else {

				var title = $('#inputt').val();
				var arr = [];

				console.log(title.length);
				if (title.length > 0) {
					/* console.log(title); */
					$
							.ajax({
								url : 'MusicChk2.do',
								type : 'post',
								dataType : "json",
								data : 'title=' + title,
								success : function(result) {

									$('.ss').remove();

									for (var i = 0; i < result.length; i++) {

										//console.log("가수 : " + result[i].singer
										//		+ "제목 : " + result[i].title);

										$('#table')
												.append(
														/* 							"<tr class = 'ss'><td><ul><li class = scale>가수 : "+result[i].singer+" 제목 : "+result[i].title+"</li></ul><td><td></td></tr>"); */
														"<ul class = 'ss'><li class = 'singer' align = 'left'>"
																+ result[i].singer
																+ "</li><span><li class = 'listCheck' align = 'left'>"
																+ result[i].title
																+ "</li></ul>");

									}

									$('.listCheck').on('click', listCheck);
									li = $('#table ul.ss');
								},
								error : function() {

								}

							});
				} else {
					$('.ss').remove();
				}
			}
		}

		function listCheck() {
			var text = this.innerHTML;

			//replaceAll 사용

			text = text.replaceAll("<br>", " - ");

			$('#inputt').val(text);
		}
	</script>

	<script>
		$('#search').on('click', function() {
			var title = $('#inputt').val();
			console.log(title + "테스트");

			$.ajax({
				url : "http://localhost:9000/re/" + title,
				method : "POST",
				success : function(rs) {

					console.log(rs.result);

				}
			});

		});
	</script>

<!-- 	<script>
		$('.sj').on('click', function() {
			var l = $('.listt').text();

			$.ajax({
				url : "MylistService.do",
				type : 'post',
				dataType : "json",
				data : {},
				success : function(result) {

				}
			})
		})
	</script> -->

		<script>
				$('.gray').on('click', function() {
					/* 	$('.sj').css("background-color","#FBC7BE") */
				
							$(this).parent().parent().parent().css("background-color","#FBC7BE")
						
							   var a = $(this).parent().parent().next().text();
         
        					 console.log(a);
         
						$.ajax({
							url : "bucket.do",
							type : 'post',
							dataType : "json",
							//data : {},
							success : function(result) {
								
							alert("성공");

							}
						})
						
				});
				
				$('.gray').on('dblclick', function() {
					/* 	$('.sj').css("background-color","#FBC7BE") */
					
				
							$(this).parent().parent().parent().css("background-color","#FFFFFF")
						
						/* $.ajax({
							url : "myListPage.jsp",
							type : 'post',
							dataType : "json",
							data : {},
							success : function(result) {
							alert("성공");

							}
						}) */
						
				});
				</script>
				
				<script>
      
      //$('.sj').on('click',function(){
         /* var list = $('#list5').text();         
         console.log(list); */
        // var a = $(this).children().next().next().text();
         
         /*쿠키를 이용해보자*/
         
        // console.log(a);
         
/*          $(this).text(
               console.log(l)); */
         
               
               
         
       //  ff.push(a);
    //  })
      
      $('#cartt').on('click', function(){
         
         var f = <%=(Integer)session.getAttribute("idnum")%>;
         console.log(f);

         var click1 = $('.sj').children().children().children().text();
         console.log(click1);
      });
      
   </script>






</body>
</html>