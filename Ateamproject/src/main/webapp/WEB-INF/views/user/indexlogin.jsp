<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="author" content="Kodinger">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>My Login Page</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="resources/css/my-login2.css">

</head>

<body class="my-login-page">
<jsp:include page="../header2.jsp"></jsp:include>
	<section class="m-5">
		<div class="container h-100">
			<div class="row justify-content-md-center h-100">
				<div class="card-wrapper">
			
					</div>
					<div class="card fat">
						<div class="card-body">
							<h4 class="card-title">로그인</h4>
							<%--<form action="${path}/Bteamproject/loginPost" method="post" class="my-login-validation" novalidate=""> --%>
							<form action="loginPost" method="post" class="my-login-validation" novalidate="">
								<div class="form-group">
								<div class="form-item">
									<label for="ID">E-Mail 주소</label>
									<input id="ID" type="ID" class="form-control" name="id">
									<div class="invalid-feedback">
										Email is invalid
									</div>
									
								</div>
									</div>
								<div class="form-group">
								<div class="form-item">
									<label for="password">비밀번호
										<a href="forgot" class="float-right" style="color:green">
											&nbsp;&nbsp;비밀번호를 잊으 셨나요?
										</a>
										</label>
									<input id="password" type="password" class="form-control" name="password" >
								    <div class="invalid-feedback">
								    	Password is required
							    	</div>
								</div>
								</div>

								<!-- <div class="form-group">
									<div class="custom-checkbox custom-control">
										<input type="checkbox" name="remember" id="remember" class="custom-control-input">
										<label for="remember" class="custom-control-label">Remember Me</label>
									</div>
								</div> -->
								

								<div class="form-group m-0">
									<button type="submit" class="btn btn-primary btn-block" >
										로그인
									</button>
								</div>
								<div class="mt-4 text-center">
									계정이 없으신가요? <a href="register" style="color:green">계정만들기</a>
								</div>
							</form>
						</div>
					</div>
					
					</div>
				</div>
			</div>
		</div>
	</section>
	<jsp:include page="../footer.jsp"></jsp:include>
	<script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>/script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<script src="resources/js/my-login.js"></script>
	
	<script>

    var msg = "${msg}";
    if (msg === "REGISTERED") {
        alert("회원가입이 완료되었습니다. 로그인해주세요~");
    } else if (msg == "FAILURE") {
        alert("아이디와 비밀번호를 확인해주세요.");
    }
</script>
</body>
</html>
