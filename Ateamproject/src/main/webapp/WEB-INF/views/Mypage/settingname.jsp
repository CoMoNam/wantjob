<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/settingname.css">
</head>
<body>
	<jsp:include page="../header2.jsp"></jsp:include>
	<div class="line"></div>
	<form action="UnameUpdate" name="membersVO" method="post">
		<div class="setting-cont">
			<h1 class="setting-title">이름 수정</h1>
			<section class="setting-sec1">
				<div class="subtitle">이름</div>
				<div class="inputbox"><input name="name" id="name" value="${li.name}" type="text" placeholder="이름을 입력해주세요"/></div>
			</section>
			<section class="setting-sec2">
				<div class="btn-cont">
					
						<a href="mypage" class="setting-cancle"><p>취소</p></a>
						<button type="submit" class="setting-comp">수정완료</button>
					
				</div>
			</section>
		</div>
	</form>
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>