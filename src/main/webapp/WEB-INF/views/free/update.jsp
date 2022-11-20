<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>게시물 수정 페이지</title>
</head>
<body>
<div>
    <div>
        <h3>게시물 수정 페이지</h3>
    </div>
    <div>
    <form method="post">
        <div>
            <label>게시물 번호: ${item.num}</label>
        </div>
        <div>
            <label>게시물 제목 :</label>
          <input type="text" name="name" value="${item.name}">
        </div>

        <div>
            <label>내용: </label>
            <textarea name="contents">${item.contents}</textarea>
        </div>

        <button>변경하기</button>
        <a href="/free/detail/${item.num}"><button type="button">취소</button></a>
    </form>
</div>
</div>
</body>
</html>
