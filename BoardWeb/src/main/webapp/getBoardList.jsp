<%@ page import="java.util.List" %>
<%@ page import="com.springbook.biz.board.BoardVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>게시글 목록</title>
<!-- 부트스트랩 css 사용 -->
<link rel="stylesheet" href="/resources/css/bootstrap.css">
</head>
<body>
<div class="jumbotron">
  <h1>게시글 목록</h1>
  <p>${userName }님! 게시판에 오신걸 환영합니다.</p>
  <p><a class="btn btn-primary btn-lg" href="logout.do" role="button">로그아웃</a></p>
</div>

<!-- 검색 시작 -->
<form class="form-inline justify-content-end" action="getBoardList.do" method="post">
  <div class="form-group text-right">
  <select name="searchCondition" class="form-control">
		<c:forEach items="${conditionMap}" var="option">
			<option value="${option.value}">${option.key}
		</c:forEach>
	</select>
    <input type="text" class="form-control" id="exampleInputName2" placeholder="검색어 입력" name="searchKeyword">
  </div>
  <button type="submit" class="btn btn-primary">검색</button>
</form>

<!-- 검색 종료 -->

<table class="table table-striped table-hover">
<thead>
                <tr>
	<th >번호</th>
	<th >제목</th>
	<th >작성자</th>
	<th >작성일시</th>
	<th >조회수</th>
   </tr>
</thead>
<tbody>
<c:forEach items="${boardList }" var="board">
<tr>
	<td>${board.seq }</td>
	<td align="left"><a href="getBoard.do?seq=${board.seq }">${board.title }</a></td>
	<td>${board.writer }</td>
	<td><fmt:formatDate value="${board.regDate}" pattern="yyyy-MM-dd"/></td>
	<td>${board.cnt }</td>
</tr>
</c:forEach>

 </tbody>
 </table>


<div class="form-row float-right">
<a href="insertBoard.jsp" class="btn btn-primary btn-lg ">새글 작성</a>
</div>
</div>
</body>
</html>