<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%String sid = (String)session.getAttribute("sid");%>
<%String smnum = (String)session.getAttribute("smnum");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="resources/css/main.css" />
<link rel="stylesheet" type="text/css" href="resources/css/header-gosu.css">
<title>header</title>
</head>
<body>
<% if(sid == null){  //로그인 하기전 또는 로그인 실패 시 %>
<ul>
	<header class="header">
		<div class="header-main">
			<div class="header-left">
				<a href="index"><img src="resources/images/logo.png" alt="logo"></a>
				<div class="header-search">
					<input type="search" id="search" placeholder="어떤 서비스가 필요하세요?">
				</div>
			</div>
			<nav class="header-right">
				<ul class="nav-list">
					
					<li><a href="indexlogin">로그인</a></li>
					<li><a href="register">회원가입</a></li>
					
				</ul>	
			</nav>
		</div>
	</ul>
			</body>
			<body>	<% }else{ //로그인 성공 시 %>
				<ul>
	<header class="header">
		<div class="header-main">
			<div class="header-left">
				<a href="userindex"><img src="resources/images/logo.png" alt="logo"></a>
				<div class="header-search">
					<input type="search" id="search" placeholder="어떤 서비스가 필요하세요?">
				</div>
			</div>
			<nav class="header-right">
				<ul class="nav-list">
					<li><a href="sent">받은견적</a></li>			
						<div class="dropdown" >
							<img href="#" onclick="myFunction()" class="dropbtn" style="width: 30px; height: 30px;" alt=" 프로필" src="resources/images/profile.png">
							<div id="myDropdown" class="dropdown-content" >
								<div class="name"><div class="name-box"></div></div>
								<%=sid %>
                                 <div class="li1" ><a href="mypage?mnum=<%=smnum%>">마이페이지</a></div>
								    <hr class="header-line">
								    <div class="bottom-li">
								  
								    	<div class="li3" ><a href="logout">로그아웃</a></div>
								    </div>
								    <% if(sid.equals("admin")){ %>
						<li><a href="/Bteamproject/admin">Admin</a></li>
					<% } %>
							  </div>
						</div>
				</ul>	
			
				<% } %>

			</nav>
		</div>
	
	</header>
	<script src="resources/js/header-gosu.js"></script>
</body>
</html>