<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html;"/>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="resources/css/admin.css" />
<title>회원현황</title>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="content">
		<section class="admin">
			<h1 class="title">회원현황</h1>
			
			<div class="member-search">
					<input type="search" id="search" placeholder="아이디 검색">
					
			</div>	
			<button>검색</button>
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
				<c:forEach var="item" items="${list}">
				<tr>
					<td>${item.mnum}</td>
					<td><a href="adminmemberinfo">${item.id}</a></td>
					<td>${item.name}</td>
					<td>${item.hp}</td>
					<td>${item.gender}</td>
					<td>${item.useryn}</td>
					<td>${item.gosuyn}</td>
					<td>${item.adminyn}</td>
					<td>${item.memberexit}</td>
				</tr>
				</c:forEach>
				
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