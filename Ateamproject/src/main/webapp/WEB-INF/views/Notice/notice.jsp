<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!DOCTYPE html>
<html dir="ltr" lang="ko" class="fa-event-icons-ready">
<head>
<title></title>
<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" type="text/css" href="resources/css/notice.css" />
</head>
<body>
<!-- header -->
<jsp:include page="../header.jsp"></jsp:include>

<!--main -->
<main role="main">
  <div class="container-divider"></div>
  <div class="container">
    <nav class="sub-nav">
      <ol class="breadcrumbs">
        <li title="고객센터 : 공지사항">
          <a href="http://localhost:9000/Bteamproject/notice">고객센터 : 공지사항</a>
        </li>
      <li title="공지사항">
        "공지사항"
      </li>
    </ol>
    <form role="search" class="search" data-search action="" accept-accept-charset="UTF-8" method="get">
      <input name="utf-8" type="hidden" value="✓">
      <input type="search" name="query" id="query" placeholder="검색" aria-label="검색">
    </form>
  </nav>
<div class="category-container">
  <div class="category-content">
    <div class="page-header">
      <h1>공지사항</h1>
  
  <div class="section-tree">
    <section class="section">
      <h3 class="section-tree-title">
       
      </h3>
    <ul class="article-list">
      <li class="article-list-item article-promoted">
        <sapn data-title="승격된 문서" class="icon-star">

        </span>
        <a href="http://localhost:9000/Bteamproject/notice1" class="article-list-link">[22.03.07] 공지1</a>
      </li>
      <li class="article-list-item article-promoted">
        <span data-title-"승격된 문서" class="icon-star">

        </sapn>
        <a href="http://localhost:9000/Bteamproject/notice2" class="article-list=link">[22.05.01] 공지2</a>
      </li>
      <li class="article-list-item article-promoted">
        <span data-title="승격된 문서" class="icon-star">

        </span>
        <a href="http://localhost:9000/Bteamproject/notice3" class="article-list-link">[22.05.03] 공지3</a>
      </li>
      <li class="article-list-item article-promoted">
        <span data-title="승격된 문서" class="icon-star">
        </span>
        <a href="http://localhost:9000/Bteamproject/notice4" class="article-list-link">[22.05.04] 공지4</a>
      </li>
      <li class="article-list-item article-promoted">
        <span data-title="승격된 문서" class="icon-star">
        </span>
        <a href="http://localhost:9000/Bteamproject/notice5" class="article-list-link">[22.05.10] 공지5</a>
      </li>
      <li class="article-list-item article-promoted">
        <span data-title="승격된 문서" class="icon-star">
        </span>
        <a href="http://localhost:9000/Bteamproject/notice6" class="article-list-link">[22.05.10] 공지6</a>
      </li>
      
    </ul>
      
      </section>
      </div>
    </div>
  </div>
</div>
</main>

<!-- footer -->
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>