<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<% response.setCharacterEncoding("utf-8"); %>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <script src="https://code.jquery.com/jquery-3.6.1.js"
            integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
    <link href="../resources/css/freelist.css" rel="stylesheet" type="text/css">
    <meta charset="UTF-8">

    <title>자유 게시판</title>
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
            <h1>FREE TALK</h1>
            <div class="searchArea">
                <form method="get">
                    <select class="select_hide" name="search">
                        <option value="1"></option>
                    </select>
                        <input name="keyword" type="text" placeholder="게시물 검색">
                    <button>검색</button>
                </form>
            </div>
        </div>

        <!--인트로 끝-->

        <%--	컨텐츠 시작	--%>


        <div class="table_box">
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
                        <td><fmt:formatDate value="${item.pubDate}" pattern="yyyy-MM-dd"/></td>
                        <td>${item.userId}</td>
                    </tr>
                </c:forEach>

                </tbody>

            </table>
            <div class="add_button">
                <a href="add">
                    <button type="button">글쓰기</button>
                </a>
            </div>
        </div>

        <%--	컨텐츠 끝	--%>
        <div class="pagination">
            <ul class="pagination pagination-sm justify-content-center">
                <li class="page-item"><a href="?page=1" class="page-link">처음</a></li>
                <li class="page-item"><a href="?page=${pager.prev}" class="page-link">이전</a></li>
                <c:forEach var="page" items="${pager.list}">
                    <li class="page-item"><a href="?page=${page}" class="page-link ${page eq pager.page ? 'active' : ''}">${page}</a></li>
                </c:forEach>
                <li class="page-item"><a href="?page=${pager.next}" class="page-link">다음</a></li>
                <li class="page-item"><a href="?page=${pager.last}" class="page-link">마지막</a></li>
            </ul>
        </div>





        <footer class="footer">
            <div class="nav">
                <div class="jflogo"><a href="/"><img src="/resources/image3/jf_logo.png"
                                                     style="width: 65px; height: 45px;"></a>
                </div>
                <div>COPYRIGHT 2022. JF. ALL RIGHT RESERVED.</div>
            </div>
        </footer>
    </div>
</div>
</body>
</html>