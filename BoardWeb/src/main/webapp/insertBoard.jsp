<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>새글등록</title>
<!-- 부트스트랩 css 사용 -->
<link rel="stylesheet" href="/resources/css/bootstrap.css">
</head>
<body>
<center>
		<form action="insertBoard.do" method="post" enctype="multipart/form-data">
			<div class="col-sm-7 pt-3">
				<div class="card">
					<div class="card-header card-header-primary">
						<h5 class="card-title">
							<i class="fas fa-square"></i> 글 등록
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
										<td><input class="form-control" type="text" name="writer" size="10" /></td>

									</tr>
									<tr>
										<td>내용</td>
										<td><textarea class="form-control" name="content"
												 rows="10">
								${board.content }</textarea></td>
									</tr>
									<tr>
										<tr>
											<td >업로드</td>
											<td><input type="file" name="uploadFile"></td>
										</tr>
									</tr>
							
								</tbody>
							</table>
						</div>
					</div>
				</div>
		</form>

		<div class="text-center mt-3">
			<input class="btn btn-primary btn-lg" type="submit" value=" 새 글 등록 "/>&nbsp;&nbsp;&nbsp;
			<a href="getBoardList.do" class="btn btn-primary btn-lg ">글 목록 가기</a>
		</div>
</center>
</body>
</html>