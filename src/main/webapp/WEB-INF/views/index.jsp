<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--얘는 정적 컨텐츠임!--%>
<!DOCTYPE html>
<html>
<head>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
            href="https://fonts.googleapis.com/css2?family=Cinzel:wght@700&display=swap"
            rel="stylesheet">

    <link href="resources/css/index.css" rel="stylesheet" type="text/css">

    <meta charset="UTF-8">
    <title>JSFORUM</title>

</head>
<body>
<script type="text/javascript"></script>

<article class="main">
    <div class="nav">
        <c:if test="${sessionScope.user == null}">
            <div>
                <a href="/login">LOG IN</a>
            </div>
        </c:if>


        <c:if test="${sessionScope.user != null}">

            <div>
                <a href="logout">LOG OUT</a>
            </div>
        </c:if>
    </div>


    </div>
    <div class="contents">
        <h1>Welcome To JsForum</h1>
        <p>LoL champ information</p>
        <div class="contents-box">
            <div><a href="champ/list">Champ</a></div>
            <div><a href="region/list">Region</a></div>
            <div><a href="free/list">Free Talk</a></div>
        </div>
    </div>
</article>

</body>
</html>