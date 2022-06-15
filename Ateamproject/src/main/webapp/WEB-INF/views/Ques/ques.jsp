<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>

    <link rel="stylesheet" type="text/css" href="resources/css/ques.css" />
    <title></title>
  </head>

<body>
      <jsp:include page="../header.jsp"></jsp:include>
    <section class="section-hero">
    </section>

<main role="main">
  <div class="featured-articles">
    <p class="articles-title">★가장 많이 들어온 질문(더 많은 질문들은 위에서 찾아주세요.)</p>
      <div class="container">
        <div class="row articles">
          <div class="col-md-4">
            <ul>
              <a href="http://localhost:9000/Bteamproject/ques1">
                <li>1. 어떤 서비스인가요?</li>
              </a>
            </ul>
          <ul>
            <a href="http://localhost:9000/Bteamproject/ques2">
              <li>2. 고수/고객과 어떻게 거래하나요?</li>
            </a>
          </ul>
        <ul>
          <a href="#">
            <li>3. 요청서는 무엇인가요? 작성은 어떻게 하나요?</li>
          </a>
        </ul>
      </div>
  <div class="col-md-4">
      <ul>
        <a href="#">
          <li>4. 고수/고객과 연결되면 수수료가 있을까요?</li>
        </a>
      </ul>
    <ul>
       <a href="#">
         <li>5. 고수로 가입하고 싶습니다. 자격조건이 있을까요?</li>
       </a>
     </ul>
   <ul>
     <a href="#">
       <li>6. 캐시는 무엇인가요?</li>
     </a>
   </ul>
 </div>
<div class="col-md-4">
  <ul>
    <a href="#">
      <li>7. 견적은 어떻게 보내면 될까요?</li>
    </a>
  </ul>
<ul>
  <a href="#">
    <li>8. 아이디(이메일 주소), 비밀번호가 기억나지 않습니다.</li>
  </a>
</ul>
  <ul>
    <a href="#">
      <li>9. 고수에게 리뷰는 어떻게 남기나요?</li>
    </a>
  </ul>
</div>
 </div>
  </div>











      <!-- footer -->
<jsp:include page="../footer.jsp"></jsp:include>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </main>
  </body>
</html>