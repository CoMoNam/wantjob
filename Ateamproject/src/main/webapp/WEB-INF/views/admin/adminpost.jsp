<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="resources/css/admin.css" />
<title>게시판 관리</title>
</head>
<body>

	<jsp:include page="../header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="content">
		<section class="admin">
			<h1 class="title">게시판 관리</h1>
			<div class="notice-search">
					<input type="search" id="search" placeholder="번호 검색">
					
			</div>	
			<button>검색</button>
			<div class="posttable">
			<table id="posttable">
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>조회수</th>
					<th>등록일</th>
					
				</tr>
				<tr>
					<td>번호</td>
					<td><a href="adminpostinfo">제목</a></td>
					<td>작성자</td>
					<td>조회수</td>
					<td>등록일</td>
				</tr>
				
			</table>
			</div>
		</section>
		<div class="adminfoot">
				<a><span>이전</span></a>
				<a><span>1</span></a>
				<a><span>2</span></a>
				<a><span>3</span></a>
				<a><span>4</span></a>
				<a><span>5</span></a>
				<a><span>다음</span></a>
			</div>
		
	</div>
	
	<!--  footer -->
	<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>