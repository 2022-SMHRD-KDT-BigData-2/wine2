<%@page import="Model.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<!--
	Halcyonic by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>One Column - Halcyonic by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
		<style>
			table {
				width: 100%;
				padding:20px;
			}
			td {
				padding: 20px;
				border: 1px ;
			}
		</style>
</head>
<body class="subpage">
	<%
		BoardVO bvo = (BoardVO) request.getAttribute("bvo");
	%>

	<div id="page-wrapper">

		<!-- Header -->
		<section id="header">
			<div class="container">
				<div class="row">
					<div class="col-12">

								<!-- login -->
									<h2 style="text-align:right;"><a href="Logout" id="loginout" style="color:white;">�α׾ƿ�</a>
									&nbsp;&nbsp;&nbsp;<a href="Mypage.jsp" id="Mypage" style="color:white;">����������</a></h2>
					
									
								<!-- Logo -->
									<h1><a href="index.jsp" id="logo">Wine</a></h1>

								<!-- Nav -->
										<nav id="nav">
										
										<a href="goRecommend">������õ</a>
										<a href="twocolumn1.html">���ι������</a>
										<a href="goBoardMain">ȫ����</a>
										<a href="twocolumn2.html">���̳ʸ���</a>
									</nav>


					</div>
				</div>
			</div>
		</section>



		<!-- Content -->
		<section id="content">

			<div id="board">
				<table style= "width:100%;  border: 1px solid #444444; background-color:#474f51" id="list">
					<tr style= "border: 1px solid #444444; ">
						<td style="background-color:white; width: 10%; text-align : center;">����</td>
						<td style="background-color:white"><%=bvo.getTitle()%></td>
					</tr>
					<tr>
						<td style="background-color:white; width: 10%;text-align : center;">�ۼ���</td>
						<td style="background-color:white"><%=bvo.getWriter()%></td>
					</tr>
					<tr>
						<td style="background-color:white; height:400px; width: 10%; text-align : center;">���� </td>
						<td style="background-color:white; height:400px; "><%=bvo.getContent()%></td>
					</tr>

					<tr>
						<td colspan="2"><a href="goBoardMain"><button>�ڷΰ���</button></a></td>
					</tr>
				</table>
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
										<h2>���� ���� ����Ʈ</h2>
										<div>
											<div class="row">
												<div class="col-3 col-12-small">
													<ul class="link-list last-child">
														<li>����21</li>
														<li>�ҹɸ���Ÿ����</li>
														<li>����OK</li>
													
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
														<li>������������</li>
														<li>�̱���������</li>
														<li>���α������α׷�</li>
													
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
							<h2>�ѱ� ���� �Ǹ�ó</h2>
							<div>
								<div class="row">
									<div class="col-3 col-12-small">
										<ul class="link-list last-child">
											<li><a href="twocolumn3.html">�������� ����</a></li>
											<li><a href="twocolumn4.html">���� ���</a></li>
											
										</ul>
									</div>
									<div class="col-3 col-12-small">
										<ul class="link-list last-child">
											<li><a href="twocolumn5.html">������ ���̳ʸ�</a></li>
											<li><a href="twocolumn6.html">����̼� ������</a></li>
											
										</ul>
									</div>
									<div class="col-3 col-12-small">
										<ul class="link-list last-child">
											
											<li><a href="twocolumn7.html">�긷 ���̳ʸ�</a></li>
											<li><a href="twocolumn8.html">�׶����� ���̳ʸ�</a></li>
											
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