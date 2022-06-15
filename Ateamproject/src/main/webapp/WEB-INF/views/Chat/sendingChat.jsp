<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <!-- Bootstrap core CSS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <!-- Custom styles for this template -->
<link rel="stylesheet" href="resources/css/requestChat.css">
    <title></title>
  </head>
  <body>
<jsp:include page="../header2.jsp"></jsp:include>
<!-- chat-body -->
 <div id="app-body">
<div class="chat-list">
  <div class="page-header" style="margin: 25px 0 20px;">
    <div class="container">
      <section class="page-title">
        <h3 id="chat-h3">채팅</h3>
      </section>
    <section class="row no-gutters align-items-center justify-content-between">
<!-- searchbar -->
    <div class="container" id="chat-searchbar">
      <div class="row">
        <div id="custom-search-input">
          <div class="input-group col-md-12">
            <input type="text" class="search-query form-control" placeholder="이름과 서비스를 입력해주세요."/>
             <span class="input-group-btn">
              <button class="btn btn" type="button">
               <span class="glyphicon glyphicon-search"></span>
             </button>
           </span>
         </div>
       </div>
     </div>
    </div>
  </section>
 </div>
</div>

<!-- page body -->
 <div class="page-body">
   <div class="container no-chat">
     <div class="row no-items no-gutters">
       <article class="no-items align-self-center text-center ml-auto mr-auto">
         <i><img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI4MSIgaGVpZ2h0PSI4MCIgdmlld0JveD0iMCAwIDgxIDgwIj4KICAgIDxkZWZzPgogICAgICAgIDxsaW5lYXJHcmFkaWVudCBpZD0iM2hqZ2szNWZtYSIgeDE9IjAlIiB4Mj0iMTAwJSIgeTE9IjUwJSIgeTI9IjUwJSI+CiAgICAgICAgICAgIDxzdG9wIG9mZnNldD0iMCUiIHN0b3AtY29sb3I9IiMwMEM3QUUiLz4KICAgICAgICAgICAgPHN0b3Agb2Zmc2V0PSIxMDAlIiBzdG9wLWNvbG9yPSIjNENDOEU1Ii8+CiAgICAgICAgPC9saW5lYXJHcmFkaWVudD4KICAgIDwvZGVmcz4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGc+CiAgICAgICAgICAgIDxnPgogICAgICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTU0NSAtNDEwKSB0cmFuc2xhdGUoMzc1IDEzOSkgdHJhbnNsYXRlKDEwMSAyNzEpIHRyYW5zbGF0ZSg2OSkiPgogICAgICAgICAgICAgICAgICAgICAgICA8Y2lyY2xlIGN4PSI0MC41IiBjeT0iNDAiIHI9IjQwIiBmaWxsPSJ1cmwoIzNoamdrMzVmbWEpIiBmaWxsLW9wYWNpdHk9Ii41Ii8+CiAgICAgICAgICAgICAgICAgICAgICAgIDxwYXRoIGQ9Ik0xNi41IDY0TDY0LjUgNjQgNjQuNSAxNiAxNi41IDE2eiIvPgogICAgICAgICAgICAgICAgICAgICAgICA8ZyBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMyI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8cGF0aCBkPSJNNDEuNSAyMS4zOTRjMCAxLjEwNS0uODk1IDItMiAyLS42NjkgMC0xLjI5My0uMzM0LTEuNjY0LS44OUwzNi4xNjcgMjBIMTcuNWMtMS42NTcgMC0zLTEuMzQzLTMtM1YzYzAtMS42NTcgMS4zNDMtMyAzLTNoMjFjMS42NTcgMCAzIDEuMzQzIDMgM3YxOC4zOTR6IiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgxOS41IDI0KSIvPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgPHBhdGggZmlsbD0iIzhGRTRFNCIgZD0iTTI4LjUgMzAuNDc2YzAgMS4xMDQtLjg5NSAyLTIgMi0uNTk0IDAtMS4xNTYtLjI2NC0xLjUzNi0uNzJsLTIuOTM2LTMuNTIzSDMuNWMtMS42NTcgMC0zLTEuMzQzLTMtM3YtMTRjMC0xLjY1NyAxLjM0My0zIDMtM2gyMmMxLjY1NyAwIDMgMS4zNDMgMyAzdjE5LjI0M3oiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDE5LjUgMjQpIG1hdHJpeCgtMSAwIDAgMSAyOSAwKSIvPgogICAgICAgICAgICAgICAgICAgICAgICA8L2c+CiAgICAgICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICA8L2c+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K"
           alt="empty"></i>
          <h3 id="chat-h3">메시지가 없습니다</h3>
           <p class="help-block p2">견적서를 전달하고
             <br>
            고객님과 상담을 해보세요.</p>
            <a href="http://localhost:9000/Bteamproject/requests">
          <button type="button" class="btn">견적서 보내기</button></a>
       </article>
     </div>
   </div>
 </div>
</div>

 </div>




<jsp:include page="../footer.jsp"></jsp:include>
  </body>
</html>
