<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<html>
<head>
    <title>게시글 상세 페이지</title>
    <link href="/resources/css/freedetail.css" rel="stylesheet" type="text/css">

</head>
<body>
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
    <div class="free_text_box">
<div class="free_text_header">
    ${item.userId}<span> <fmt:formatDate value="${item.pubDate}" pattern="yyyy-MM-dd hh:mm:ss"/></span>
    <div>조회수:999 <span> 추천:999</span></div>
</div>
<div class="free_text_contents">
    <div class="set_bar">
        <c:if test="${sessionScope.user.id==item.userId}">
            <a href="update/${item.num}">
                <button>수정하기</button>
            </a>
            <a href="delete/${item.num}">
                <button>삭제하기</button>
            </a>
        </c:if>
        <a href="../list">
            <button>목록으로 돌아가기</button>
        </a>
    </div>

    <h1>${item.name}</h1>
    <p>${item.contents}</p>

    <div class="recommend">
        <button>추천</button>
        <button>비추</button>
    </div>

    <div class="set_bar">
        <c:if test="${sessionScope.user.id==item.userId}">
            <a href="update/${item.num}">
                <button>수정하기</button>
            </a>
            <a href="delete/${item.num}">
                <button>삭제하기</button>
            </a>
        </c:if>
        <a href="../list">
            <button>목록으로 돌아가기</button>
        </a>
    </div>
<%--    items = 스프링에서 모델에서 담은거         /////// var는 부를 이름--%>
    <c:forEach items="${replyList}" var="reply">
        <div class="reply_list">
            <strong>${reply.id}</strong>
            <span>(<fmt:formatDate value="${reply.regDate}" pattern="yyyy-MM-dd hh:mm:ss"/>)</span>
            <p>${reply.replyContent}</p>
        </div>
    </c:forEach>
    <form method="post">
        <div class="reply_input">
            <textarea name="replyContent" placeholder="바르고 고운말 사용하세요 .."></textarea>
            <button>등록</button>
        </div>
    </form>

</div>
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
