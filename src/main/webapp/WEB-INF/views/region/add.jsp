<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("euc-kr"); %>
<html>
<head>
    <title>사진업로드용 에드 페이지</title>
</head>
<body>
    <form method="post" action="/region/add">
    <div>
        <label>아이디:</label>
        <input name="name" type="text">

        <input name="regionImg" type="file">

        <button>추가</button>
    </div>

    </form>


</body>
</html>
