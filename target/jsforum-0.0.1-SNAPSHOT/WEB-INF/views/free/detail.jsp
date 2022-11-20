<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<html>
<head>
    <title>게시글 상세 페이지</title>
</head>
<body>

        <h1>${item.name}</h1>
        <p>${item.contents}</p>
    <a href="update/${item.num}"><button>수정하기</button></a>
    <a href="delete/${item.num}"><button>삭제하기</button></a>
    <a href="../list"><button>목록으로 돌아가기</button></a>
    </body>
</html>
