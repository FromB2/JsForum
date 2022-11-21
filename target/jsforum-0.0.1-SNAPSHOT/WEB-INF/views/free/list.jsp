<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<% response.setCharacterEncoding("utf-8"); %>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
	<link href="../resources/css/freelist.css" rel="stylesheet" type="text/css">
	<meta charset="UTF-8">

	<title>자유 게시판</title>
</head>
<body>
<script type="text/javascript"></script>

<div class="wrap">
	<div class="intro_bg">
		<div class="header">
			<ul class="nav">
				<div class="jflogo">
					<a href="/"><img src="../resources/image/jf_logo.png" style="width: 65px; height: 45px;"></a>
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
			<h1>FREE TALK</h1>
			<div class="searchArea">
				<form>
					<select name="kind">
						<option value="1">이름</option>
"
					</select>
					<input type="text" name="keyword" placeholder="게시물 검색">
					<span>검색</span>
				</form>
			</div>
		</div>

		<!--인트로 끝-->

<%--	컨텐츠 시작	--%>

		<a href="add"><button type="button">추가</button></a>
	<div>
		<table class="contents">
			<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>등록일자</th>
				<th>작성자</th>

			</tr>
			</thead>
			<tbody>
			<c:if test="${list.size() < 1 }">
				<tr>
					<td>게시글이 없습니다.</td>
				</tr>
			</c:if>
			<c:forEach var="item" items="${list}">
				<tr>
					<td>${item.num}</td>
					<td><a href="/free/detail/${item.num}">${item.name}</a></td>
					<td><fmt:formatDate value="${item.pubDate}" pattern="yyyy-MM-dd"/> </td>
					<td>${item.userId}</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>

	</div>

<%--	컨텐츠 끝	--%>
		<div>
			<div><a href="?page=1&${pager.query}">처음</a></div>
			<div><a href="?page=${pager.prev}&${pager.query}">이전</a></div>

			<c:forEach var="page" items="${pager.list}">
				<div><a href="?page=${page}&${pager.query}">${page}</a></div>
			</c:forEach>

			<div><a href="?page=${pager.next}&${pager.query}">다음</a></div>
			<div><a href="?page=${pager.last}&${pager.query}">마지막</a></div>
		</div>
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