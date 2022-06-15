<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-tpye" content="text/html;charset=utf-8">
	<meta name="author" content="Kodinger">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>My Login Page &mdash; Bootstrap 4 Login Page Snippet</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet"  href="resources/css/my-login2.css">
<style>

        #modal {
          display: none;
          position:relative;
          width:100%;
          height:100%;
          z-index:1;
        }
        
        #modal h2 {
          margin:38px;
          margin-left:175px;
        }
        
         #modal p {
          margin:20px;
          margin-left:35px;
        }
        #modal button {
          display:inline-block;
          width:400px;
          margin-left:calc(100% - 444px - 10px);
          height:38px;
          background: #00c7ae;
          border:0;
          color:#fff;
          margin-top:10px;
        }
          #modal .button_closer {
          display:inline-block;
          width:250px;
          margin-left:calc(100% - 264px - 10px);
          height:38px;
          background: #fff;
          border:0;
          color:#00c5ae;
        }
        
        
        
        #modal .modal_content {
          width:550px;
          margin:-600px auto;
          padding:20px 10px;
          background:#fff;
          border:0;
        }
        
        #modal .modal_layer {
          position:fixed;
          top:0;
          left:0;
          width:100%;
          height:100%;
          background:rgba(0, 0, 0, 0.5);
          z-index:-1;
        } 
 </style>
 
</head>
<% request.setCharacterEncoding("UTF-8"); %>
<body class="my-login-page">
<jsp:include page="../header2.jsp"></jsp:include>
	<section class="m-5">
			<div class="row justify-content-md-center h-100">
				<div class="card-wrapper">
					
					</div>
					<div class="card fat">
						<div class="card-body">
							<h4 class="card-title">계정만들기</h4>
							<form method="POST" class="my-login-validation" novalidate>
								<div class="form-group">
									<label for="name">이름</label>
									<input id="name" type="text" class="form-control" name="name" required autofocus>
									<div class="invalid-feedback">
										이름을 작성해주세요.
		
									</div>
									

								</div>

								<div class="form-group">
									<label for="ID">E-Mail 주소</label>
									<input id="ID" type="ID" class="form-control" name="ID">
		
									<div class="invalid-feedback">
										이메일을 작정해주세요.
									</div>
								</div>

								<div class="form-group">
									<label for="password">비밀번호</label>
									<input id="password" type="password" class="form-control" name="password" required data-eye>
									<div class="invalid-feedback">
										비밀번호를 확인해주세요.
									</div>
								</div>
								
								<div class="form-group">
									<div class="custom-checkbox custom-control">
										<input type="checkbox" name="agree" id="agree" class="custom-control-input" required="">
										<label for="agree" class="custom-control-label">이용약관 <a type="text" id="modal_opne_text" style="color:green">에 동의합니다.</a></label>
													

										<div class="invalid-feedback">
											동의하셔야합니다.
										</div>
									</div>
								</div>

								<div class="form-group m-0">
									<button type="submit" class="btn btn-primary btn-block"  >
										가입하기
									</button>
								</div>
								<div class="mt-4 text-center">
									이미 계정이 있습니까? <a href="indexlogin" style="color:green">로그인</a>
								</div>
							</form>
						</div>
					</div>
					
				</div>
	



	<div id="modal">
   
    <div class="modal_content">
        <h2>이용약관</h2>
          <p>
     제 1 조 (목적)

이 약관은 네이버 주식회사 ("회사" 또는 "네이버")가 제공하는 네이버 및 네이버 관련 제반 서비스의 이용과 관련하여 회사와 회원과의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.


제 2 조 (정의)

이 약관에서 사용하는 용어의 정의는 다음과 같습니다.
①"서비스"라 함은 구현되는 단말기(PC, TV, 휴대형단말기 등의 각종 유무선 장치를 포함)와 상관없이 "회원"이 이용할 수 있는 네이버 및 네이버 관련 제반 서비스를 의미합니다.
②"회원"이라 함은 회사의 "서비스"에 접속하여 이 약관에 따라 "회사"와 이용계약을 체결하고 "회사"가 제공하는 "서비스"를 이용하는 고객을 말합니다.
③"아이디(ID)"라 함은 "회원"의 식별과 "서비스" 이용을 위하여 "회원"이 정하고 "회사"가 승인하는 문자와 숫자의 조합을 의미합니다.
④"비밀번호"라 함은 "회원"이 부여 받은 "아이디와 일치되는 "회원"임을 확인하고 비밀보호를 위해 "회원" 자신이 정한 문자 또는 숫자의 조합을 의미합니다.
⑤"유료서비스"라 함은 "회사"가 유료로 제공하는 각종 온라인디지털콘텐츠(각종 정보콘텐츠, VOD, 아이템 기타 유료콘텐츠를 포함) 및 제반 서비스를 의미합니다.
⑥"포인트"라 함은 서비스의 효율적 이용을 위해 회사가 임의로 책정 또는 지급, 조정
할 수 있는 재산적 가치가 없는 "서비스" 상의 가상 데이터를 의미합니다.
⑦"게시물"이라 함은 "회원"이 "서비스"를 이용함에 있어 "서비스상"에 게시한 부호ㆍ문자ㆍ음성ㆍ음향ㆍ화상ㆍ동영상 등의 정보 형태의 글, 사진, 동영상 및 각종 파일과 링크 등을 의미합니다. 
   </p>
  
       

       
        <button type="button" id="modal_close_btn" >확인</button>
       </div>
       
    
   
    <div class="modal_layer"></div>
</div>
	</section>
<jsp:include page="../footer.jsp"></jsp:include>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<script src="resources/js/my-login.js"></script>
	<script>
document.getElementById("modal_opne_text").onclick = function() {
    document.getElementById("modal").style.display="block";
}

document.getElementById("modal_close_btn").onclick = function() {
    document.getElementById("modal").style.display="none";
}  

</script>

</body>
</html>