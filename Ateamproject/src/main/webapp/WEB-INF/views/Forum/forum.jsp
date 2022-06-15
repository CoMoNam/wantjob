 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>게시판 리스트</title>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
   	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>


   
   
   
<style>
    .btn{
font-weight: bolder;
border-radius: 5px;
background-color: #00c7ae;
color:white;
text-align: center;
}

a :hover{
  background-color: #2b9d8f;
}
.page-item.active .page-link{
background-color: #00c7ae;
border-color: #00c7ae;
}

.active{
background-color: #00c7ae;
border-color: #00c7ae;
}


    </style>
  </head>
  <body>
  
  <script>
  $(document).ready(function() {
  var result = "${msg}";
  if (result == "regSuccess") {
      alert("게시글 등록이 완료되었습니다.");
  } else if (result == "modSuccess") {
      alert("게시글 수정이 완료되었습니다.");
  } else if (result == "delSuccess") {
      alert("게시글 삭제가 완료되었습니다.");
  }

  let moveForm = $("#moveForm");
	 
  $(".pageInfo a").on("click", function(e){
  	 
      e.preventDefault();
      moveForm.find("input[name='pageNum']").val($(this).attr("href"));
      moveForm.find("input[name='amount']").val();
      moveForm.attr("action", "/Bteamproject/forum");
      moveForm.submit();
      
  });
});

</script>
  
  
  
  <jsp:include page="../header2.jsp"></jsp:include>
  <div class="text-center">
   <h1 ><a href="http://localhost:9000/Bteamproject/forum" style="text-decoration:none; color:black;">자유게시판</a></h1>
  </div>
  <div class="container">
    <table class="table table-hover" id="dataTable">

      <thread>
      <tr style="pointer-events:none;">
        <th>번호</th>
        <th>제목</th>
        <th>ID</th>
        <th>날짜</th>
        <th>조회수</th>
      </tr>
      </thread>

    <tbody>
   		<c:forEach var="list" items="${forums}">
   		<input type="hidden" name="mnum" value="1"/>
   		
      <tr>

        <td><c:out value="${list.pnum}"/></td>
         <td><a href="forumwindowUser?pnum=${list.pnum}"class="test" id="ptitle" style="text-decoration:none; color:black; display:block; overflow:hidden; text-overflow:ellipsis; white-space:nowrap; width:100px;">
         <c:out value="${list.ptitle}"/></a></td>
        <td><c:out value="${list.id}"/></td>
        <td><c:out value="${list.pdate}"/></td>
        <td><c:out value="${list.phits}"/></td>
      </tr>
      </c:forEach>
    </tbody>
    
</table>

<div style="float:right">
  <a href="http://localhost:9000/Bteamproject/forumboard">
  <button class="btn" type="button" style="color:white;">글쓰기</button></a>
</div>
<br>
<br>
<div class="pageInfo_wrap"> 
  <ul id="pageInfo" class="pageInfo pagination justify-content-center" >
   <!-- 이전버튼 -->
  <c:if test="${Criteria.prev}">
   <li class="pageInfo_btn previous"><a href="${Criteria.startPage-1}">이전</a></li>
  </c:if>
  	<c:forEach var="num" begin = "${Criteria.startPage}" end="${Criteria.endPage}">
    <li class="page-item  ${Criteria.pageNum == num ? "active":"" }"><a class="page-link"  href="${num}">${num}</a></li>

    </c:forEach>
    <!-- 다음버튼 -->
   <c:if test="${Criteria.next}">
    <li class="page-item">
     <a class="page-link" href="${Criteria.endPage +1}" aria-label="Next">
       <span aria-hidden="true">&raquo;</span>
    </a>
   </li>
   </c:if>
  </ul>
  </div>
  <form id="moveForm" method="get">
<input type="hidden" name="pageNum"  value="${Criteria.pageNum}">
<input type="hidden" name="amount"  value="${Criteria.amount}">
</form>
  

</div>






<jsp:include page="../footer.jsp"></jsp:include>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

  </body>
</html>






<!-- <div clas=""> -->
<!--   <ul class="pagination justify-content-center"> -->
<!--    <li class="page-item"> -->
<!--      <a class="page-link" href="#" aira-label="Previous"> -->
<!--        <span aria-hidden="true">&laquo;</span> -->
<!--      </a> -->
<!--   </li> -->
<!--     <li class="page-item"><a class="page-link" href="#">1</a></li> -->
<!--     <li class="page-item"><a class="page-link" href="#">2</a></li> -->
<!--     <li class="page-item"><a class="page-link" href="#">3</a></li> -->
<!--     <li class="page-item"><a class="page-link" href="#">4</a></li> -->
<!--     <li class="page-item"> -->
<!--      <a class="page-link" href="#" aria-label="Next"> -->
<!--        <span aria-hidden="true">&raquo;</span> -->
<!--     </a> -->
<!--    </li> -->
<!--   </ul> -->
<!--   </div> -->

