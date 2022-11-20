<%--
  Created by IntelliJ IDEA.
  User: Hwang joosun
  Date: 2022-10-30
  Time: 오후 10:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>

    <script
            src="https://code.jquery.com/jquery-3.6.1.js">
    </script>
    <title>로그인 페이지</title>
    <link href="resources/css/login.css" rel="stylesheet" type="text/css">
    <%--  <script src="jquery-3.4.1js"></script>--%>

    <script>
        let id = $('#id');
        let pw = $('#pw');
        let btn = $('#btn');

        $(btn).on('click', function () {
            if ($("#id").val() == "") {
                $("#id").next('label').addClass('warning')
                setTimeout(function () {
                    $('label').removeClass('warning');
                }, 1500);
            } else if ($("#pw").val() == "") {
                $("#pw").next('label').addClass('warning');
                setTimeout(function () {
                    $('label').removeClass('warning');
                }, 1500);
            }
        });

    </script>
</head>

<body>
<section class="login-form">
    <a href=".."><h1>JS FORUM</h1></a>
    <form method="post">
        <div class="int-area">
            <input type="text" name="id" id="id" autocomplete="off" required>
            <label for="id">USER ID</label>
        </div>

        <div class="int-area">
            <input type="password" name="pw" id="pw" autocomplete="off" required>
            <label for="id">PASSWORD</label>
        </div>
        <div class="btn-area">
            <button id="btn"
                    type="submit">LOGIN
            </button>
        </div>
        <div class="caption">
            <div>
                <a href="/signup">Sign up</a>
            </div>
            <div>
                <a href="">Forgot Password?</a>
            </div>
        </div>
    </form>

</section>
<%--  <script type="text/javascript" src="resources/js/login.js"></script>--%>

</body>
</html>
