<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"
%>
<!DOCTYPE html>
<html>
<head>
    <script src="https://code.jquery.com/jquery-3.6.1.js"
            integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
    <link href="/resources/css/champlist.css" rel="stylesheet" type="text/css">
    <meta charset="UTF-8">

    <title>챔피언 리스트</title>
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
                    <div class="nav_login"><a href="/logout">로그아웃</a></div>
                </c:if>
            </ul>
        </div>
        <div class="intro_text">
            <h1>CHAMPION</h1>
            <div class="searchArea">
                <form>
                    <input type="search" placeholder="챔피언 검색">
                    <span>검색</span>
                </form>
            </div>
        </div>

        <div class="container">
            <c:forEach var="item" items="${list}">
                <a href="detail/${item.num}">
                    <div class="card"><img src="/resources/image/${item.name}.jpg">
                        <div class="contents"><h2>${item.name}<span>${item.regionName}</span></h2></div>
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