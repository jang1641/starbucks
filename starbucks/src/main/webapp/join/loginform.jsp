<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스타벅스</title>

<link rel="stylesheet" href="<%=request.getContextPath() %>/css/header.css"> 
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/footer.css"> 
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/loginform.css">  
<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

<script src="http://code.jquery.com/jquery-latest.js"></script>
   
   <!-- 외부 자바스크립트 파일 불러오기 -->
<script src="<%=request.getContextPath() %>/join/login.js"></script>

<style>
* {
   margin: 0; 
   padding: 0;
   color: var(- -color-font-black);
}
article {
   background: url(<%=request.getContextPath() %>/img/join2.jpg) center top no-repeat fixed #0a0807; 
    -webkit-background-size: cover;
    width: 100%; 
    margin: 0 auto; 
    padding-top: 100px;
    padding-bottom: 100px;
}


</style>

</head>
<body>

<div>

 
   <!-- header -->
<header>
	<div> 
		<h1 style="margin-bottom: 0px; margin-top: 0px;"><a href="./join/main.jsp"><img alt="Starbucks" src="https://www.starbucks.co.kr/common/img/common/logo.png" width=65px; height=65px;></a></h1>
		<nav>   
		<ul class="main-menu">
			<li><a href="content.jsp" class="b">COFFEE</a></li> 
			<li><a href="" class="b">MENU</a></li>
			<li><a href="" class="b">STORE</a></li>
			<li><a href="<%=request.getContextPath() %>/board/BoardListAction.do" class="b">COMMUNITY</a></li> 
			<li><a href="" class="b">STARBUCKS REWARDS</a></li>
			<li><a href="" class="b">WHAT'S NEW</a></li>
		</ul>
		</nav>
		
		<ul class="spot">  
			<li><a href="project/index/index.jsp">Home</a></li>  
			<li><a href="">Customer Service & Ideas</a></li>
			<li><a href="">Find a Store</a></li>
			<li><input type="text" class="q"></li>			
			<li><a href="" class="click">검색</a></li>								
		</ul>
		
	</div>
</header>


</div>

<article>

   <div>
      <h2>&nbsp; 로그인</h2>
   </div>

   <div class="join_wrap">
      <form method="post" action="<%=request.getContextPath() %>/JoinLogin.do">
         <fieldset>
            <p class="first">
               <span>Welcome!</span>  스타벅스커피 코리아에 오신 것을 환영합니다. 
            </p>

            <div class="input_box">
               <input type="text" maxlength="20" placeholder="아이디를 입력해 주세요."
                     id="id" name="id" class="logid">
               <input type="password" maxlength="20" placeholder="비밀번호를 입력해 주세요."
                     id="m_pw" name="m_pw" class="logpwd">   
                     
               <span class="check_wrap">
                  <input type="checkbox" id="checkid" name="checkid" class="check_mem">   
                  <p>아이디저장</p>
               </span>         
                     
               <div class="log_no_btn">
                  <input type="submit" class="log_btn" value="로그인">      
               </div>   
            </div>
              
          
            <div class="finally_btn"> 
               <ul> 
                  <li>
                     <input type="button" value="회원가입하기" class="join_btn"
                               onClick="location.href='<%=request.getContextPath()%>/Join.do' ">
                  </li> 
                 
               </ul>   
            </div>     
             
         </fieldset> 
      </form>  
   </div>   
</article> 
 
<!-- footer -->
<div id="jb-footer">
<jsp:include page="footer.jsp"></jsp:include>
</div>

</body>
</html>