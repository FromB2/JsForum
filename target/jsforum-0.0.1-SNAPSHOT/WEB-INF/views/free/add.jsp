<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <link href="../resources/css/freeadd.css" rel="stylesheet" type="text/css">
    <title>게시글 작성 페이지</title>
</head>
<body>
<div class="layout">
    <form method="post" action="/free/add">
        <div>
            <label>제목: </label>
            <input name="name" type="text"/>
        </div>
        <div>
            <label>내용: </label>
            <textarea name="contents"></textarea>
        </div>
        <button type="submit">작성</button>
    </form>

</div>
</body>
</html>
