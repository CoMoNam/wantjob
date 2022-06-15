<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="resources/css/admin.css" />
<title>공지사항 수정</title>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="content">
		<section class="admin">
			<h1 class="title">공지사항 수정</h1>
			
			<div class="titlebox">
				<h3>제목</h3>
				<input type="text" class="make-title" >
			</div>
			<div class="contentbox">
				<h3>내용</h3>
				<textarea class="make-content" ></textarea>
			</div>
		</section>
		<section class="control">
		<button>수정하기</button>
		</section>
		
	</div>
	
	<!--  footer -->
	<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>