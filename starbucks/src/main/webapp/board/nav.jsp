<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ page import = "dao.FoodDAO" %>
 <%@ page import = "model.FoodBean" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>nav</title>

<link rel="stylesheet" type="text/css" href="../css/style-nav.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/header.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/footer.css">
<style type="text/css">


* {
	margin: 0;
	padding: 0;
	color: var(- -color-font-black);
	text-decoration: none;
}
nav {
	width: 71%;
    margin: 0 auto;
    padding-top: 150px;
}
nav h2 {
	font-size: 36px;
	font-weight: bold;
	color: #222222;
}
nav .nav {
	position: absoulte;
	padding-left: 740px;
	top: 60px;
}
nav .nav2 {
	list-style: none;
	float: left;
	margin: 0 2.5px;
	font-size: 14px;
	color: #666666;
}
.box {
	padding: 30px 30px 0 30px;
    border: 1px solid #ddd;
    position: relative;
    border-radius: 5px;
    margin-bottom: 20px;
    margin-top: 25px;
}
.box .sub {
	padding-bottom: 30px;
	font-weight: bold;
	font-size: 18px;
}
.box .btn {
	position: absolute;
	right: 30px;
	top: 17px;
}
.box .tab {
	display: block;
	width: 200px;
	height: 35px;
	line-height: 35px;
	text-align: center;
	font-size: 14px;
	background: #006633;
    color: white;  
}
.box .tab2 {
	display: block;
	width: 200px;
	height: 35px;
	line-height: 35px;
	text-align: center;
	font-size: 14px;
	background: #006633;
    color: white;  
	left: 260px;
	position: absolute;
	top: 106px;
	background: #f4f4f1;
}
.box .cate {
	padding: 20px 0;
	margin-bottom: 25px;
}
.box .cate input {
	border-radius: 5px;
	display: inline-block;
	margin-right: 10px;
	
}	
.container {
	display: block;
	padding: 0;
}
.container .sel {
	margin-right: 8px;
	font-size: 12px;
	width: 100px;
	height: 25px;
}
.project {
	margin-top: 20px;
	margin-bottom: 20px;
}
.project .project_sub {
	padding: 20px;
	background: #f4f4f2;
	height: 20px;
}
.project .project_sub a {
	display: block;
	float: left;
	font-size: 18px;
	font-weight: bold;
	color: black;
}
.project img {
	display: block;
	float: left;
	margin-left: 15px;
	width: 45px;
	height: 25px;
}
.project span {
	display: block;
	float: left;
	margin-left: 5px;
	font-size: 13px;
    line-height: 25px;
	letter-spacing: -1px;
}
.menu_view {
	display: inline-block;
	width: 100%;
	padding-bottom: 90px;
}
.menu_view  ul {

}
.menu_view  li {
	float: left;
	list-style: none;
	width: 24%;
    margin: 0.5%;
}
.menu_view img {
	width: 100%;
}
.menu_view dd {
	font-size: 14px;
	
	color: #444;
	line-height: 45px;
	text-align: center;
	white-space: nowrap
}	

</style>
</head>
<body>
<nav>
	<div>
		<h2>??????</h2>
	</div>
	<div>
		<ul class="nav">
			<li class="nav2"><img src="img/home.png"></li>
			<li class="nav2">></li> 
			<li class="nav2">menu</li>
			<li class="nav2">></li>
			<li class="nav2">??????</li>
		</ul>
	</div>
	<div class="box">
		<h2 class="sub">????????????</h2><hr>
		<div class="btn">
			<a href="#"><img src="img/list_btn.png"></a>
		</div><br>
		<div class="tab">
			<a href="#" style="color:white;">????????????</a>
		</div>
		<div class="tab2">
			<a href="#">??????</a>
		</div>
		<div class="cate">
			<input type="checkbox" class="menu">?????? ????????????
			<input type="checkbox" class="menu">?????? ?????? ??????
			<input type="checkbox" class="menu">????????? ??????
			<input type="checkbox" class="menu">???????????????
			<input type="checkbox" class="menu">???????????????
			<input type="checkbox" class="menu">????????????
			<input type="checkbox" class="menu">???????????? ?????????
			<input type="checkbox" class="menu">???(?????????)<br>
			<input type="checkbox" class="menu">?????? ?????? ??????
			<input type="checkbox" class="menu">???????????? ??????(?????????)
		</div>
	</div>
	
	<div class="container">
		<input type="button" value="???????????? ??????" class="sel">
 		<input type="button" value="??????????????? ??????" class="sel">
 		<input type="button" value="?????????" class="sel" onclick="location.href='<%=request.getContextPath()%>/FoodForm.do'">  

		??? ?????? : ${listcount} ??? <br>

	</div>
	
	
</nav>
</body>
</html>