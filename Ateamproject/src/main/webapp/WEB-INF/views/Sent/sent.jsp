<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, maximum-scale=1.0, minimum-scale=1, user-scalable=yes,initial-scale=1.0" />
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/requests.css">
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
	<div class="requests-main">
		<div class="requests-title">
			<h1>받은 견적</h1>
		</div>
		<div class="requests">
			<ul class="requests-ul">
				<c:forEach var="item" items="${list}">
					<li class="requests-li">
						<div class="li-cont">
							<a href="sent_sentinfo?esnum=${item.esnum}">
								<div class="li-img"><img alt="" src="resources/images/profile.png"> </div>
								<div class="requests-info">
									<div class="user-id">gweg3242@naver.com</div>
									<div class="details">
										<div>카테고리 C</div>
										<div>지역: 서울</div>
										<div>
										<c:choose>
											<c:when test="${item.unit eq 't'.charAt(0)}">
												총비용:
											</c:when>
											<c:otherwise>
												시간당 비용:
											</c:otherwise>
										</c:choose>

										${item.escost}원</div>
									</div>
									<!-- <button class="li-del">삭제</button> -->
								</div>
							</a>
							<button class="li-del" onclick="del(${item.esnum})">삭제</button>
						</div>
					</li>
				</c:forEach>
			</ul>
		</div>
	</div>
<jsp:include page="../footer.jsp"></jsp:include>
<script type="text/javascript">
	function del(esnum) {
		var chk = confirm("정말 삭제하시겠습니까?");
		if(chk){
			location.href='delete?esnum='+esnum;
		}
	}
</script>
</body>
</html>