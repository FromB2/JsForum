<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"
 %>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
<link href="../resources/css/regionlist.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">

<title>지역 리스트</title>
</head>
<body>
<script type="text/javascript"></script>
	
	<div class="wrap">
		<div class="intro_bg">
			<div class="header">
				<ul class="nav">
					<div class="jflogo">
						<a href="/"><img src="/resources/image/jf_logo.png" style="width: 65px; height: 45px;"></a>
					</div>
					<li><a href="/champ/list">CHAMP</a></li>
					<li><a href="/region/list">REGION</a></li>
					<li><a href="/free/list">FREE TALK</a></li>
					<c:if test="${sessionScope.user == null}"><li><a href="/login">LOG IN</a></li>
					</c:if>

					<c:if test="${sessionScope.user != null}"><li><a href="/logout">LOG OUT</a></li>
					</c:if>
				</ul>
				
			</div>
			<div class="intro_text">
				<h1>REGIONS</h1>
				<div class="searchArea">
					<form>
					<input type="search" placeholder="지역 검색">
						<span>검색</span>
					</form>
				</div> 
			</div>
		
		<!--인트로 끝-->
		
			<ul class="contents">
				<li><a href="detail/1"><img src="../resources/image/bandle-city_bg.jpg"></a></li>
				<li><a href="regiondetail"><img src="../resources/image/zaun_bg.jpeg"></a></li>
				<li><a href="regiondetail"><img src="../resources/image/void_bg.jpg"></a></li>
				<li><a href="regiondetail"><img src="../resources/image/shurima_bg.jpg"></a></li>
			</ul>
			
			
			<ul class="contents">
				<li><a href="detail"><img src="../resources/image/bilgewater_bg.jpg"></a></li>
				<li><a href="detail"><img src="../resources/image/demacia_bg.jpeg"></a></li>
				<li><a href="detail"><img src="../resources/image/freljord_bg.jpg"></a></li>
				<li><a href="detail"><img src="../resources/image/ionia_bg.jpg"></a></li>
			</ul>
			
			<ul class="contents">
				<li><a href="detail"><img src="../resources/image/ixtal_bg.jpg"></a></li>
				<li><a href="detail"><img src="../resources/image/mount-targon_bg.jpg"></a></li>
				<li><a href="detail"><img src="../resources/image/noxus_bg.jpg"></a></li>
				<li><a href="detail"><img src="../resources/image/piltover_bg.jpg"></a></li>
			</ul>
			<ul class="contents">
				<li><a href="detail"><img src="../resources/image/shadow-isles_bg.jpg"></a></li>
				<li></li>
				<li></li>
				<li></li>
			</ul>
		
		<footer>
				<div class="jflogo">
						<a href="/"><img src="../resources/image/jf_logo.png" style="width: 65px; height: 45px;"></a>
				</div>
				
				<div>
					CEO.황주선<br>
					Addr.대전광역시 동구 우암로352-21 비전관6층<br>
					010-1234-5678<br>
					COPYRIGHT 2022. JF. ALL RIGHT RESERVED.
				</div>
		</footer>
		</div>
	</div>
</body>
</html>