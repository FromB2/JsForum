<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지역 상세 페이지</title>
    <link href="/resources/css/detail.css" rel="stylesheet" type="text/css">

</head>
<body>
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
            <div class="nav_login"><span>${sessionScope.user.name} 님 환영합니다.</span><a href="/logout">로그아웃</a>
            </div>
        </c:if>
    </ul>
</div>
<div class="img_box">
    <div class="aaa">
        <img src="/resources/image4/${item.name}.jpg">
    </div>
    <div class="bbb">
        <span>${item.name}</span>
        <img src="/resources/image4/라인.png">
        <h3>${item.caption}</h3>
    </div>

    <div class="detail_text2_region">
        ${item.info}
    </div>
</div>
<footer class="footer_detail">
    <div class="nav">
        <div class="jflogo"><a href="/"><img src="/resources/image3/jf_logo.png" style="width: 65px; height: 45px;"></a></div>
        <div>COPYRIGHT 2022. JF. ALL RIGHT RESERVED.</div>
    </div>
</footer>
</body>
</html>