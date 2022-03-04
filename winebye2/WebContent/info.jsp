<%@page import="Model.SellVO"%>
<%@page import="Model.WineVO"%>
<%@page import="Model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>



<title>One Column - Halcyonic by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<script src="js/jquery-3.6.0.js"></script>
</head>

<%
	WineVO vo = (WineVO)request.getAttribute("uvo");
	SellVO svo = (SellVO)request.getAttribute("svo");

%>
<body class="subpage">
	<div id="page-wrapper">

		<!-- Header -->
		<section id="header">
			<div class="container">
				<div class="row">
					<div class="col-12">

							<!-- login -->
									<h2 style="text-align:right;"><a href="Logout" id="loginout" style="color:white;">로그아웃</a>
									&nbsp;&nbsp;&nbsp;<a href="Mypage.jsp" id="Mypage" style="color:white;">마이페이지</a></h2>
					
									
								<!-- Logo -->
									<h1><a href="index.jsp" id="logo">Wine</a></h1>

								<!-- Nav -->
										<nav id="nav">
										
										<a href="goRecommend">와인추천</a>
										<a href="twocolumn1.html">와인백과사전</a>
										<a href="goBoardMain">게시판</a>
										<a href="twocolumn2.html">와이너리맵</a>
									</nav>

					</div>
				</div>
			</div>
		</section>

		<!-- Content -->
		<section id="content">
			<div class="container">
				<div class="row">
					<div class="col-12">

						<!-- Main Content -->
						<section>
							<div>
								<a class="feature-image"><img src="<%=vo.getInfo_img()%>"
									style="max-width: 30%; height: auto; float:left;" alt="" /></a>
							</div>
							<header>
								<h2><%=vo.getInfo_name()%></h2>
								
							</header>
								<h3 style="font-weight:bold">와인종류</h3>
								<h3><%=vo.getInfo_type()%></h3>
								<br>
								<h3 style="font-weight:bold">도수&nbsp;&nbsp; >&nbsp;&nbsp;
								<span style="font-weight:normal"><%=vo.getInfo_proof()%></span>
								</h3>
								<h3 style="font-weight:bold">타닌&nbsp;&nbsp; >&nbsp;&nbsp;
								<span style="font-weight:normal"><%=vo.getInfo_tannin()%></span>
								</h3>
								<h3 style="font-weight:bold">당도 &nbsp;&nbsp;>&nbsp;&nbsp;
								<span style="font-weight:normal"><%=vo.getInfo_sugar()%></span>
								</h3>
								<h3 style="font-weight:bold">산도&nbsp;&nbsp; >&nbsp;&nbsp;
								<span style="font-weight:normal"><%=vo.getInfo_acid()%></span>
								</h3>
								<h3 style="font-weight:bold">바디&nbsp;&nbsp; >&nbsp;&nbsp;
								<span style="font-weight:normal"><%=vo.getInfo_body()%></span>
								</h3>
								<h3 style="font-weight:bold">용량 &nbsp;&nbsp;>&nbsp;&nbsp;
								<span style="font-weight:normal"><%=vo.getInfo_size()%></span>
								</h3>
								<h3 style="font-weight:bold">어울리는 음식&nbsp;&nbsp;>&nbsp;&nbsp;
								<span style="font-weight:normal"><%=vo.getInfo_food()%></span>
								</h3>
								
								<p style="color:red;"><%=vo.getInfo_tag() %>
							
								<br>
								<br>
								<br>
									
							<h3>와인설명</h3>
							<p><%=vo.getInfo_con()%></p>
	<br><br>

		
			<header>
								<h2>판매처</h2>
							</header>
							<div id="map" style="width: 100%; height: 350px;"></div>

							<script type="text/javascript"
								src="//dapi.kakao.com/v2/maps/sdk.js?appkey=638eaa79c50c282089a6eb96c790c030"></script>
							<script>
								var mapContainer = document
										.getElementById('map'), // 지도를 표시할 div 
								mapOption = {
									center : new kakao.maps.LatLng(<%=svo.getSell_mark()%>), // 지도의 중심좌표
									level : 4
								// 지도의 확대 레벨
								};

								var map = new kakao.maps.Map(mapContainer,
										mapOption); // 지도를 생성합니다

								var imageSrc ="images/pngwing.com.png" , // 마커이미지의 주소입니다    
								imageSize = new kakao.maps.Size(65, 65), // 마커이미지의 크기입니다
								imageOption = {
									offset : new kakao.maps.Point(27, 69)
								}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

								// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
								var markerImage = new kakao.maps.MarkerImage(
										imageSrc, imageSize, imageOption), markerPosition = new kakao.maps.LatLng(<%=svo.getSell_mark()%>); // 마커가 표시될 위치입니다

								// 마커를 생성합니다
								var marker = new kakao.maps.Marker({
									position : markerPosition,
									image : markerImage
								// 마커이미지 설정 
								});

								// 마커가 지도 위에 표시되도록 설정합니다
								marker.setMap(map);
							</script>
							<br>
							<p>회사명 : <%=svo.getSell_name() %></p>
							<p>주소 : <%=svo.getSell_address() %></p>
							<p>연락처 : <%=svo.getSell_phone() %></p>
							<p>홈페이지 : <a href = "<%=svo.getSell_url() %>"><%=svo.getSell_url() %></a> </p>
		
		
		
						
						
						</section>
					</div>
				</div>
			</div>
		</section>
	</div>


	<!-- Footer -->
				<section id="footer">
					<div class="container">
						<div class="row">
							<div class="col-10 col-12-medium">

								<!-- Links -->
									<section>
										<h2>와인 관련 사이트</h2>
										<div>
											<div class="row">
												<div class="col-3 col-12-small">
													<ul class="link-list last-child">
														<li>와인21</li>
														<li>소믈리에타임즈</li>
														<li>와인OK</li>
													
													</ul>
												</div>
												<div class="col-3 col-12-small">
													<ul class="link-list last-child">
														<li><a href="https://www.wine21.com/">https://www.wine21.com</a></li>
														<li><a href="http://www.sommeliertimes.com/">http://www.sommeliertimes.com/</a></li>
														<li><a href="http://www.wineok.com/">http://www.wineok.com/</a></li>
													</ul>	
												</div>
					
						
										<div class="col-3 col-12-small">
													<ul class="link-list last-child">
														<li>영국와인잡지</li>
														<li>미국와인잡지</li>
														<li>와인교육프로그램</li>
													
													</ul>
												</div>
												
												<div class="col-3 col-12-small">
													<ul class="link-list last-child">
														<li><a href="https://www.decanter.com/">https://www.decanter.com/</a></li>
														<li><a href="https://www.winespectator.com/">https://www.winespectator.com/</a></li>
														<li><a href="https://www.wsetglobal.com/">https://www.wsetglobal.com/</a></li>
														</ul>
												</div>
						
						
						

											</div>
										</div>
									</section>
									
									<section>
									<br>
							<h2>한국 와인 판매처</h2>
							<div>
								<div class="row">
									<div class="col-3 col-12-small">
										<ul class="link-list last-child">
											<li><a href="twocolumn3.html">여포와인 농장</a></li>
											<li><a href="twocolumn4.html">컨츄리 농원</a></li>
											
										</ul>
									</div>
									<div class="col-3 col-12-small">
										<ul class="link-list last-child">
											<li><a href="twocolumn5.html">고도리 와이너리</a></li>
											<li><a href="twocolumn6.html">샤토미소 도란원</a></li>
											
										</ul>
									</div>
									<div class="col-3 col-12-small">
										<ul class="link-list last-child">
											
											<li><a href="twocolumn7.html">산막 와이너리</a></li>
											<li><a href="twocolumn8.html">그랑꼬도 와이너리</a></li>
											
										</ul>
									</div>
									
								</div>
							</div>
						</section>
									
									

							</div>
							<div class="col-4 col-12-medium imp-medium">

								<!-- Blurb -->
									<section>
										<h2>&nbsp;</h2>
										<p>
											&nbsp;
										</p>
									</section>

							</div>
						</div>
					</div>
				</section>

	<!-- Copyright -->
	<div id="copyright">
		&copy; Untitled. All rights reserved. | Design: <a
			href="http://html5up.net">HTML5 UP</a>
	</div>

	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>