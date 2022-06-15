<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<link rel="stylesheet" type="text/css" href="resources/css/received.css">
</head>
<body>
	<jsp:include page="../header2.jsp"></jsp:include>
	<div class="recevied">
		<div class="recevied-main">
			<div class="received-title"><h1>견적보내기</h1></div>
			
			<c:url var="insertUrl" value="/estimateInsert" />
			<form:form commandName="estimateVO" action="${insertUrl}" name="estimateVO" method="post">
			
				<from class="received-from">
				
					<section class="unit-wrap">
							<form:select class="received-select" path="unit" id="unit">
								<form:option value="t">총비용</form:option>
								<form:option value="h">시간당 비용</form:option>
							</form:select>
					</section>
					<section class="cost-wrap">
						<fieldset class="input-price">
							<div class="input-group">
								<form:input path="escost" id="escost" type="tel" placeholder="0" autocomplete="off" maxlength="11" class="price-control" />
								<div class="input-text">원</div>
								
							</div>
							<hr class="input-border">	
						</fieldset>
					</section>
	 				<section class="desc-wrap">
						<fieldset>
							<label>
								<strong>견적 설명</strong>
								<span class="text-count">
									<span id="count">0/500</span>
								</span>
							</label>
							<form:textarea path="explan" id="explan" class="textbox" rows="8" maxlength="501"/>
						</fieldset>
					</section>
					<section class="send-wrap">
						<button type="submit" class="send-btn">견적보내기</button>
					</section> 
				</from>
			</form:form>
		</div>
	</div>
<script src=https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js></script>
<script type="text/javascript">
	$('.textbox').keyup(function(e){
		var content = $(this).val();
		$('#count').html(content.length+"/500");
		
		if(content.length > 500){
			alert("최대 500자까지 입력 가능합니다.");
			$(this).val(content.substring(0,500));
			$('#count').html("500/500");
		}
	});
</script>
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>