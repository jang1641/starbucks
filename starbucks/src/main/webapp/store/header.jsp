<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<header>
	<div>
		<h1 style="margin-bottom: 0px; margin-top: 0px;"><a href="./join/main.jsp"><img alt="Starbucks" src="https://www.starbucks.co.kr/common/img/common/logo.png" width=65px; height=65px;></a></h1>
		<nav>
		<ul class="main-menu">
			<li><a href="content.jsp" class="b">COFFEE</a></li>
			<li><a href="" class="b">MENU</a></li>
			<li><a href="" class="b">STORE</a></li> 
			<li><a href="" class="b">RESPONSIBILITY</a></li>
			<li><a href="" class="b">STARBUCKS REWARDS</a></li>
			<li><a href="" class="b">WHAT'S NEW</a></li>
		</ul>
		</nav>
		
		<!-- 세션이 존재할 경우 -->	 
		<c:if test="${sessionScope.id != null }">
		 
		<ul class="spot">
			<li>${sessionScope.id }님</li> 
			<li><a href="./join/mypage.jsp">My Starbucks</a></li>
			<li><a href="<%=request.getContextPath() %>/Logout.do">로그아웃</a></li>
			<li><input type="text" class="q"></li>			
			<li><a href="" class="click">검색</a></li> 								
		</ul>

		
		</c:if>
		  
		<!-- 세션이 존재하지 않는 경우 -->  
		<c:if test="${sessionScope.id == null }">	 
			<ul class="spot">
				<li><a href="<%=request.getContextPath() %>/LoginForm.do">Sign In</a></li>
				<li><a href="">My Starbucks</a></li>
				<li><a href="">Customer Service & Ideas</a></li>
				<li><a href="">Find a Store</a></li>
				<li><input type="text" class="q"></li>			
				<li><a href="" class="click">검색</a></li>
			</ul>
		</c:if> 
		
	</div>
</header>

</body>
</html>