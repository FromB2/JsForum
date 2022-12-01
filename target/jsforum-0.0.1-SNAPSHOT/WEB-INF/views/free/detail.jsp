<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"
%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <script src="https://code.jquery.com/jquery-3.6.1.js"
            integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
    <link href="/resources/css/freedetail.css" rel="stylesheet" type="text/css">
    <meta charset="UTF-8">
    <link href="/resources/summernote/summernote.min.css" rel="stylesheet">
    <script src="/resources/summernote/summernote.min.js"></script>
    <script src="/resources/summernote/lang/summernote-ko-KR.js"></script>
    <script>
        $(function() {
            $("#summernote").summernote({
                lang: 'ko-KR' // default: 'en-US'
            });
        });

        $(function (){
            $("#reply_add").click(e=>{
                if (${sessionScope.user==null}){
                    alert("로그인 해주세요");
                    return;
                }
                $(".reply_add").submit();
            })
        })

    </script>
    <title>챔피언 리스트</title>
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
                <div class="nav_login"><span>${sessionScope.user.name} 님 환영합니다.</span><a href="/logout">로그아웃</a>
                </div>
            </c:if>
        </ul>
    </div>


    <div class="rhdqor">
    </div>
    <div class="free_text_box">
        <div class="free_text_header">
            ${item.userId}<span> <fmt:formatDate value="${item.pubDate}" pattern="yyyy-MM-dd hh:mm:ss"/></span>
            <div>조회수:999 <span> 추천:999</span></div>
        </div>
        <div class="free_text_contents">
            <div class="set_bar">
                <c:if test="${sessionScope.user.id==item.userId}">
                    <a href="update/${item.num}"><button>수정</button></a>
                    <a href="delete/${item.num}"><button>삭제</button></a>
                </c:if>
                <a href="../list"><button>목록</button></a>
            </div>

            <h1>${item.name}</h1>
            <div class="qhsans"> <p>${item.contents}</p></div>

            <div class="recommend">
                <button>추천</button>
                <button>비추</button>
            </div>

            <div class="set_bar">
                <c:if test="${sessionScope.user.id==item.userId}">
                    <a href="update/${item.num}"><button>수정</button></a>
                    <a href="delete/${item.num}"><button>삭제</button></a>
                </c:if>
                <a href="../list"><button>목록</button></a>
            </div>
            <%--    items = 스프링에서 모델에서 담은거         /////// var는 부를 이름--%>
            <c:forEach items="${replyList}" var="reply">
            <form method="get">
                <div class="reply_list">
                    <strong>${reply.id}</strong>
                    <span>(<fmt:formatDate value="${reply.regDate}" pattern="yyyy-MM-dd hh:mm:ss"/>)</span>
                    <c:if test="${sessionScope.user.id == reply.id}">
                        <span><a href="${reply.replyNum}/delete_comment">삭제</a></span>
                    </c:if>
                    <p>${reply.replyContent}</p>
                    </form>
                </div>
            </c:forEach>
        </div>
        <form method="post" class="reply_add">
            <div class="reply_input">
                <textarea id="summernote" name="replyContent" placeholder="바르고 고운말 사용하세요 .."></textarea>
                <button id="reply_add" type="button">등록</button>
            </div>
        </form>
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