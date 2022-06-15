<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="resources/css/admin.css" />
<title>관리자페이지</title>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="content">
		<section class="admin">
			<h1 class="title">관리자 페이지</h1>
			<div class="content_layout">
				<a href="adminmember"><div class="number"><p>회원 관리</p></div></a>
				<a href="adminnotice"><div class="number"><p>공지사항 관리</p></div></a>
				<a href="adminpost"><div class="number"><p>게시판 관리</p></div></a>			
			</div>
			
		</section>
		
	</div>
	
	<!--  footer -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>