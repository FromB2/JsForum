<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--얘는 정적 컨텐츠임!--%>
<!DOCTYPE html>
<html>
<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">

    <link href="/resources/css/index.css" rel="stylesheet" type="text/css">

    <meta charset="UTF-8">
    <title>JSFORUM</title>

</head>
<body>
<div class="wrap">
        <video muted autoplay loop><source src="/resources/image3/index_video.mp4"></video>
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
<div class="index_text">
    <h1>Welcome To JsForum</h1>
    <h3>LOL Champion information</h3>
</div>
    <div class="container">
        <a href="champ/list">
            <div class="card">
                <img src="/resources/image3/index_chmap_cut.jpg">
                <div class="contents">
                    <h2>챔피언<span>챔피언 정보입니다</span></h2>
                </div>
            </div>
        </a>
        <a href="region/list">
            <div class="card">
                <img src="/resources/image3/index_region_cut.jpg">
                <div class="contents">
                    <h2>지역<span>지역 정보입니다</span></h2>
                </div>
            </div>
        </a>
        <a href="free/list">
            <div class="card">
                <img src="/resources/image3/index_free_cut.jpg">
                <div class="contents">
                    <h2>자유게시판<span>사용자 소통의 장소입니다</span></h2>
                </div>
            </div>
        </a>
    </div>
    <footer class="footer">
        <div class="nav">
            <div class="jflogo"><a href="/"><img src="/resources/image3/jf_logo.png" style="width: 65px; height: 45px;"></a>
            </div>
            <div>COPYRIGHT 2022. JF. ALL RIGHT RESERVED.</div>
        </div>
    </footer>

</div>
</body>
</html>