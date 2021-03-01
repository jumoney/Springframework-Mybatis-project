<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><spring:message code="message.user.login.title"/></title>
<!-- 부트스트랩 css 사용 -->
<link rel="stylesheet" href="/resources/css/bootstrap.css">
<style>
body {
	padding-top: 10%;
}
</style>
</head>
<body>
 <div class="container">
      <form action="login.do" method="post" class="form-signin">
        <h2 class="form-signin-heading">부트스트랩을 활용한 Springframework + Mybatis 게시판</h2>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input name="id" type="text" id="inputEmail" class="form-control" placeholder="아이디" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input name="password" type="password" id="inputPassword" class="form-control" placeholder="비밀번호" required>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">로그인</button>
        <a class="btn btn-lg btn-primary btn-block" href="join.do">회원가입</a>
      </form>

    </div> <!-- /container -->
</body>
</html>