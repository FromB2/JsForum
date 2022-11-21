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
<script type="text/javascript"></script>

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
                    <li><a href="/login">로그인</a></li>
                </c:if>

                <c:if test="${sessionScope.user != null}">
                    <li><a href="/logout">로그아웃</a></li>
                </c:if>
            </ul>

        </div>
        <div class="intro_text">
            <h1>CHAMP</h1>
            <div class="searchArea">
                <form>
                    <input type="search" placeholder="챔피언 검색">
                    <span>검색</span>
                </form>
            </div>
        </div>

        <!--인트로 끝-->
        <div class="list_wrap">
            <c:forEach var="item" items="${list}">
                <ul class="item">
                    <li><a href="/champ/detail/${item.num}">
                        <div class="card_box"><img src="/resources/image/${item.name}.jpg" class="card_img"></div>
                        <div class="card_text"><strong>${item.name}</strong>
                            <p>${item.regionName}</p></div>
                    </a>
                    </li>
                </ul>
            </c:forEach>
        </div>
        <footer>
            <div class="jflogo">
                <a href="/"><img src="/resources/image3/jf_logo.png" style="width: 65px; height: 45px;"></a>
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