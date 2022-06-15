<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/sent-info.css">
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>

<div class="info-main">
	<div class="info-title"><h1>견적서</h1></div>
	<div class="info-cont">
		<section class="price-section">
			<div class="info-select">
				<c:choose>
					<c:when test="${list.unit =='t'.charAt(0)}">
						총비용
					</c:when>
					<c:otherwise>
						시간당 비용
					</c:otherwise>
				</c:choose>
			</div><p>:</p>
			<div class="info-price">${list.escost }</div><p>원</p>
		</section>
		<section class="text-section">
			<label class="info-label">
				<strong>견적설명</strong>
			</label>
			<div class="explain-box">
				<div class="info-text">${list.explan }</div>
			</div>
		</section>
		<section class="btn-section">
			<button class="btn">채팅으로 이동</button>
		</section>
	</div>
</div>



<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>