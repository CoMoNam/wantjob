<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="resources/css/admin.css" />
<title>공지사항 관리</title>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="content">
		<section class="admin">
			<h1 class="title">공지사항 관리</h1>
			<div class="notice-search">
					<input type="search" id="search" placeholder="번호 검색">
					
			</div>	
			<button>검색</button>
			<div class="noticetable">
			<table id="noticetable">
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>등록일</th>
				</tr>
				<tr>
					<td>번호</td>
					<td><a href="adminnoticeinfo">제목</a></td>
					<td>등록일</td>
				</tr>
				
			</table>
			</div>
		</section>
		<section class="control">
		<a href="adminmakenotice"><button>작성하기</button></a>
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