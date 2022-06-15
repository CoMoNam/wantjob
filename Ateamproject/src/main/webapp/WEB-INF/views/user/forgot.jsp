<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="author" content="Kodinger">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>My Login Page &mdash; Bootstrap 4 Login Page Snippet</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="resources/css/my-login2.css">
</head>

<body class="my-login-page">
<jsp:include page="../header2.jsp"></jsp:include>
	<section class="m-5">
			<div class="row justify-content-md-center h-100">
				<div class="card-wrapper">
					
					</div>
					<div class="card fat">
						<div class="card-body">
							<h4 class="card-title">비밀번호 찾기</h4>
							<form method="POST" class="my-login-validation" novalidate="">
								<div class="form-group">
									<label for="email">E-Mail 주소</label>
									<input id="email" type="email" class="form-control" name="email" value="" required autofocus>
									<div class="invalid-feedback">
										Email is invalid
									</div>
									<div class="form-text text-muted">
										"비밀번호 재설정"을 클릭하면 비밀번호 재설정 링크를 보내드립니다. link
									</div>
								</div>

								<div class="form-group m-0">
									<button type="submit" class="btn btn-primary btn-block">
										비밀번호 재설정
									</button>
								</div>
							</form>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</section>
<jsp:include page="../footer.jsp"></jsp:include>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="resources/js/my-login.js"></script>
</body>
</html>
    