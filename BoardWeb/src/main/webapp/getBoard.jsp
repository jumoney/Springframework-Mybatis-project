<%@ page import="com.springbook.biz.board.impl.BoardDAOMybatis"%>
<%@ page import="com.springbook.biz.board.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>글 상세</title>
<!-- 부트스트랩 css 사용 -->
<link rel="stylesheet" href="/resources/css/bootstrap.css">
</head>
<body>
	<center>
		<form action="updateBoard.do" method="post">
			<input name="seq" type="hidden" value="${board.seq }" />
			<div class="col-sm-7 pt-3">
				<div class="card">
					<div class="card-header card-header-primary">
						<h5 class="card-title">
							<i class="fas fa-square"></i> 글 상세
						</h5>
						<p class="card-catagory"></p>
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table">
								<tbody>
									<tr style="line-height: 30px;">

										<th>제목</th>
										<td><input name="title" class="form-control" type="text"
											value="${board.title }" /></td>
									</tr>
									<tr>
										<th>작성자</th>
										<td>${board.writer }</td>

									</tr>
									<tr>
										<td>내용</td>
										<td><textarea class="form-control" name="content"
												cols="30" rows="10">
								${board.content }</textarea></td>
									</tr>
									<tr>
										<td>등록일</td>
										<td>${board.regDate }</td>
									</tr>
									<tr>
										<td>조회수</td>
										<td>${board.cnt }</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
		</form>

		<div class="text-center mt-3">
			<input class="btn btn-primary btn-lg" type="submit" value="글 수정" />&nbsp;&nbsp;&nbsp;
			<a href="deleteBoard.do?seq=${board.seq }"
				class="btn btn-primary btn-lg ">글삭제</a>&nbsp;&nbsp;&nbsp; <a
				href="getBoardList.do" class="btn btn-primary btn-lg ">글목록</a>
		</div>
		
	</center>
</body>
</html>