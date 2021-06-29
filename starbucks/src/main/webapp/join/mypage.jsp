<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Starbucks</title>   
  
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/header.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/footer.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/mypage_content.css">
<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

<style> 
html{
	font-size: 20px;
}
body{
	font-size: 1rem;
	margin:0;
} 
#jb-header{
	width:100%; 
	position:fixed;
	height:6rem;
}

</style>
</head>
<body> 


<!-- header -->
<header>
	<div>
		<h1 style="margin-bottom: 0px; margin-top: 0px;"><a href="./join/main.jsp"><img alt="Starbucks" src="https://www.starbucks.co.kr/common/img/common/logo.png" width=65px; height=65px;></a></h1>
		<nav>   
		<ul class="main-menu">
			<li><a href="" class="b">COFFEE</a></li> 
			<li><a href="" class="b">MENU</a></li>
			<li><a href="" class="b">STORE</a></li>
			<li><a href="<%=request.getContextPath() %>/BoardListAction.do" class="b">COMMUNITY</a></li>
			<li><a href="" class="b">STARBUCKS REWARDS</a></li>
			<li><a href="" class="b">WHAT'S NEW</a></li>
		</ul>
		</nav> 
	
		 
		<ul class="spot">
				<li><a href="<%=request.getContextPath() %>/Logout.do">로그아웃</a></li> 
				<li><a href="">Customer Service & Ideas</a></li>
				<li><a href="">Find a Store</a></li>
				<li><input type="text" class="q"></li>			
				<li><a href="" class="click">검색</a></li>
			</ul>
		  
	</div>    
</header> 
 
  
 
<div id="jb-content" style="z-index: 1;">
<jsp:include page="mypage_content.jsp"></jsp:include>
</div>
<!-- footer -->
<div id="jb-footer">
<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>