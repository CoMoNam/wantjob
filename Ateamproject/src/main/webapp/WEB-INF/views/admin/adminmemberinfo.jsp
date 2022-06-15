<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="resources/css/admin.css" />
<title>회원정보</title>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="content">
		<section class="admin">
			<h1 class="title">회원정보</h1>
			<div class="membertable">
			<table id="membertable">
				<tr>
					<th>회원번호</th>
					<th>아이디</th>
					<th>이름</th>
					<th>핸드폰번호</th>
					<th>성별</th>
					<th>유저여부</th>
					<th>고수여부</th>
					<th>관리자여부</th>
					<th>회원탈퇴</th>
				</tr>
				<tr>
					<td>회원번호</td>
					<td>아이디</td>
					<td>이름</td>
					<td>핸드폰번호</td>
					<td>성별</td>
					<td>유저여부</td>
					<td>고수여부</td>
					<td>관리자여부</td>
					<td>회원탈퇴</td>
				</tr>
			</table>
			</div>
		</section>
		<section class="control">
		<a href="adminmember"><button>뒤로</button></a>
		<button>관리자</button>
		<button>탈퇴</button>
		</section>
		
	</div>
	
	<!--  footer -->
	<jsp:include page="../footer.jsp"></jsp:include>
	
</body>
</html>