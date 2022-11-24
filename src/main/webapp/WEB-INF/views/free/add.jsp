<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <link href="../resources/css/freeadd.css" rel="stylesheet" type="text/css">
    <title>게시글 작성 페이지</title>

</head>
<link href="/resources/css/freeupdate.css" rel="stylesheet" type="text/css">
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
            <div class="nav_login"><span>${sessionScope.user.name} 님 환영합니다.</span><a href="/logout">로그아웃</a></div>
        </c:if>
    </ul>
</div>
<div class="free_text_header">
    작성자: ${sessionScope.user.id}
</div>
<div>
    <div>
        <form method="post">
            <div class="JM">
                <div class="JM_move">
                    <label>제목:</label>
                    <input type="text" name="name">
                </div>
            </div>

            <div class="NY">
                <textarea name="contents"></textarea>
            </div>

            <div class="set_bar">
                <button>등록</button>
                <a href="/free/list"><button type="button">취소</button></a>
            </div>
        </form>
    </div>
</div>
<footer class="footer">
    <div class="nav">
        <div class="jflogo"><a href="/"><img src="/resources/image3/jf_logo.png"
                                             style="width: 65px; height: 45px;"></a>
        </div>
        <div>COPYRIGHT 2022. JF. ALL RIGHT RESERVED.</div>
    </div>
</footer>
</body>
</html>
