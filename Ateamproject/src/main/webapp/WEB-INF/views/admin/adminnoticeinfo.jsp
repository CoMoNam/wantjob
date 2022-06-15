<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="resources/css/admin.css" />
<title>공지사항 내용</title>
</head>
<body>

	<jsp:include page="../header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="content">
		<section class="admin">
			<h1 class="title">공지사항 내용</h1>
			<div class="postinfotable">
			<table id="postinfotable">
				<tr>
					<th>제목</th>
					<td>제목제목제목제목제목제목제목</td>
					<th>등록일</th>
					<td colspan="3">등록일</td>
				</tr>
				<tr>
					<th id="postc">내용</th>
					<td colspan="5" id="postc">내용</td>
				</tr>
			</table>
			</div>
		</section>
		<section class="control">
		<a href="adminnotice"><button>뒤로</button></a>
		<a href="adminnoticesj"><button>수정</button></a>
		<button>삭제</button>
		</section>
	</div>
	
	<!--  footer -->
	<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>