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
                    <a href="/"><img src="/resources/image/jf_logo.png" style="width: 65px; height: 45px;"></a>
                </div>
                <li><a href="/champ/list">CHAMP</a></li>
                <li><a href="/region/list">REGION</a></li>
                <li><a href="/free/list">FREE TALK</a></li>
                <c:if test="${sessionScope.user == null}">
                    <li><a href="/login">LOG IN</a></li>
                </c:if>

                <c:if test="${sessionScope.user != null}">
                    <li><a href="/logout">LOG OUT</a></li>
                </c:if>
            </ul>

        </div>
        <div class="intro_text">
            <h1>CHAMP</h1>
            <div class="searchArea">
                <form>
                    <input type="search" placeholder="지역 검색">
                    <span>검색</span>
                </form>
            </div>
        </div>

        <!--인트로 끝-->
        <div class="list_wrap">
            <ul class="item">

                <li ><a href="#">
                    <div class="card_box"><img src="/resources/image/Teemo.jpg" class="card_img"></div>
                    <div class="card_text"><strong>티모</strong><p>밴들시티</p></div>
                    </a>
                </li>

                <li ><a href="#">
                    <div class="card_box"><img src="/resources/image/Ekko.jpg" class="card_img"></div>
                    <div class="card_text"><strong>에코</strong><p>자운</p></div>
                    </a>
                </li>
                <li ><a href="#">
                    <div class="card_box"><img src="/resources/image/kaisa.jpg" class="card_img"></div>
                    <div class="card_text"><strong>카이사</strong><p>공허</p></div>
                </a>
                </li>
                <li ><a href="#">
                    <div class="card_box"><img src="/resources/image/Azir.jpg" class="card_img"></div>
                    <div class="card_text"><strong>아지르</strong><p>슈리마</p></div>
                </a>
                </li>
                <li ><a href="#">
                    <div class="card_box"><img src="/resources/image/Gangplank.jpg" class="card_img"></div>
                    <div class="card_text"><strong>갱플랭크</strong><p>빌지워터</p></div>
                </a>
                </li>
                <li ><a href="#">
                    <div class="card_box"><img src="/resources/image/Garen.jpg" class="card_img"></div>
                    <div class="card_text"><strong>가렌</strong><p>데마시아</p></div>
                </a>
                </li>
                <li ><a href="#">
                    <div class="card_box"><img src="/resources/image/Ashe.jpg" class="card_img"></div>
                    <div class="card_text"><strong>애쉬</strong><p>프렐요드</p></div>
                </a>
                </li>
                <li ><a href="#">
                    <div class="card_box"><img src="/resources/image/Irelia.jpg" class="card_img"></div>
                    <div class="card_text"><strong>이렐리아</strong><p>아이오니아</p></div>
                </a>
                </li>
                <li ><a href="#">
                    <div class="card_box"><img src="/resources/image/qiyana.jpg" class="card_img"></div>
                    <div class="card_text"><strong>키아나</strong><p>이쉬탈</p></div>
                </a>
                </li>
                <li ><a href="#">
                    <div class="card_box"><img src="/resources/image/AurelionSol.jpg" class="card_img"></div>
                    <div class="card_text"><strong>아우렐리온 솔</strong><p>타곤산</p></div>
                </a>
                </li>
                <li ><a href="#">
                    <div class="card_box"><img src="/resources/image/Darius.jpg" class="card_img"></div>
                    <div class="card_text"><strong>다리우스</strong><p>녹서스</p></div>
                </a>
                </li>
                <li ><a href="#">
                    <div class="card_box"><img src="/resources/image/Jayce.jpg" class="card_img"></div>
                    <div class="card_text"><strong>제이스</strong><p>필트오버</p></div>
                </a>
                </li>
                <li ><a href="#">
                    <div class="card_box"><img src="/resources/image/Thresh.jpg" class="card_img"></div>
                    <div class="card_text"><strong>쓰레쉬</strong><p>그림자군도</p></div>
                </a>
                </li>
            </ul>
        </div>
        <footer>
            <div class="jflogo">
                <a href="/"><img src="/resources/image/jf_logo.png" style="width: 65px; height: 45px;"></a>
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