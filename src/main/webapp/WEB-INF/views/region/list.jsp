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
<div class="wrap">
	<div class="intro_bg">
		<div class="header">
			<ul class="nav">
				<div class="jflogo">
					<a href="/"><img src="/resources/image3/jf_logo.png" style="width: 65px; height: 45px;"></a>
				</div>
				<li><a href="/champ/list">챔피언</a></li>
				<li><a href="/region/list">지역</a></li>
				<li><a href="/free/list">자유게시판</a></li>
				<c:if test="${sessionScope.user == null}">
					<div class="nav_login"><a href="/login">로그인</a></div>
				</c:if>

				<c:if test="${sessionScope.user != null}">
					<div class="nav_login"><span>${sessionScope.user.name} 님 환영합니다.</span><a href="/logout">로그아웃</a></div>
				</c:if>
			</ul>
		</div>
		<div class="intro_text">
			<h1>REGION</h1>
			<div class="searchArea">
				<form method="get">
					<select class="select_hide" name="search">
						<option value="1"></option>
					</select>
					<input name="keyword" type="text" placeholder="지역 검색">
					<button>검색</button>
				</form>
			</div>
		</div>

		<div class="container">
			<c:forEach var="item" items="${list}">
				<a href="detail/${item.num}">
					<div class="card"><img src="/resources/image2/${item.name}.jpg">
						<div class="contents"><h2>${item.name}<span>${item.caption}</span></h2></div>
					</div>
				</a>
			</c:forEach>
		</div>
		<footer class="footer">
			<div class="nav">
				<div class="jflogo"><a href="/"><img src="/resources/image3/jf_logo.png" style="width: 65px; height: 45px;"></a>
				</div>
				<div>COPYRIGHT 2022. JF. ALL RIGHT RESERVED.</div>
			</div>
		</footer>
	</div>
</div>
</body>
</html>