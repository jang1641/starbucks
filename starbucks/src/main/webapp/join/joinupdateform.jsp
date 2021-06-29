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
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/loginupdate.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/join.css">
<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

<script src="http://code.jquery.com/jquery-latest.js"></script>

<!-- <script src="join.js"></script> -->

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
   function openDaumPostcode() {
      new daum.Postcode({
         oncomplete : function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
            // 우편번호와 주소 정보를 해당 필드에 넣고, 커서를 상세주소 필드로 이동한다.
//            document.getElementById('join_zip1').value = data.postcode1;
//            document.getElementById('join_zip2').value = data.postcode2;
            document.getElementById('m_post').value = data.zonecode;
            document.getElementById('m_adds').value = data.address;
            
         }
      }).open();
   }
</script>

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
<!-- header -->  
<header>
	<div>
		<h1 style="margin-bottom: 0px; margin-top: 0px;"><a href="./join/main.jsp"><img alt="Starbucks" src="https://www.starbucks.co.kr/common/img/common/logo.png" width=65px; height=65px;></a></h1>
		<nav>   
		<ul class="main-menu">
			<li><a href="content.jsp" class="b">COFFEE</a></li> 
			<li><a href="" class="b">MENU</a></li>
			<li><a href="" class="b">STORE</a></li>
			<li><a href="<%=request.getContextPath() %>/BoardListAction.do" class="b">COMMUNITY</a></li>
			<li><a href="" class="b">STARBUCKS REWARDS</a></li>
			<li><a href="" class="b">WHAT'S NEW</a></li>
		</ul>
		</nav>
		<!-- 세션이 존재할 경우 -->	
		<c:if test="${sessionScope.id != null }">
		 
		<ul class="spot">
			<li>${sessionScope.id }님</li> 
			<li><a href="project/index/mypage.jsp">My Starbucks</a></li>
			<li><a href="<%=request.getContextPath() %>/Logout.do">로그아웃</a></li>
			<li><input type="text" class="q"></li>			
			<li><a href="" class="click">검색</a></li>
			
		</ul>
		
		</c:if>
	</div>
</header>


<article>

   <div>
      <h2>회원 정보 수정</h2>
   </div>

   <div class="join_wrap">
      <form method="post" action="<%=request.getContextPath() %>/JoinUpdate.do">
      <input type="hidden" name="id" value="${member.id}">
         <fieldset>
         	            
            <div class="input_box">
                 				                                                        
               <input type="text"  maxlength="20" placeholder="닉네임"
                     id="m_nick" name="m_nick" class="m_nick" value="${member.m_nick }">
                     
               <input type="text"  maxlength="20" placeholder="이름"
                     id="m_name" name="m_name" class="m_name" value="${member.m_name }">
               
               <div class="brth">
                     
               <select name="m_birth1" class="m_birth1" class="m_birth1" class="m_birth1">
                  <option value="2021" <c:if test="${member.m_birth1=='2021'}">${'selected'}</c:if>>2021</option>       
               </select>
               <small>년</small>    
               </div>
               <div class="brth"> 
               <select name="m_birth2" class="m_birth2">
                  <option value="" <c:if test="${member.m_birth2==''}">${'selected'}</c:if>>선택</option>
                  <option value="1" <c:if test="${member.m_birth2=='1'}">${'selected'}</c:if>>1</option>
                  <option value="2" <c:if test="${member.m_birth2=='2'}">${'selected'}</c:if>>2</option>
                  <option value="3" <c:if test="${member.m_birth2=='3'}">${'selected'}</c:if>>3</option>
                  <option value="4" <c:if test="${member.m_birth2=='4'}">${'selected'}</c:if>>4</option>
                  <option value="5" <c:if test="${member.m_birth2=='5'}">${'selected'}</c:if>>5</option>
                  <option value="6" <c:if test="${member.m_birth2=='6'}">${'selected'}</c:if>>6</option>
                  <option value="7" <c:if test="${member.m_birth2=='7'}">${'selected'}</c:if>>7</option>
                  <option value="8" <c:if test="${member.m_birth2=='8'}">${'selected'}</c:if>>8</option>
                  <option value="9" <c:if test="${member.m_birth2=='9'}">${'selected'}</c:if>>9</option>
                  <option value="10" <c:if test="${member.m_birth2=='10'}">${'selected'}</c:if>>10</option>
                  <option value="11" <c:if test="${member.m_birth2=='11'}">${'selected'}</c:if>>11</option>
                  <option value="12" <c:if test="${member.m_birth2=='12'}">${'selected'}</c:if>>12</option>
               </select>            
               <small>월</small>
               </div>
               <div class="brth">  
               <select name="m_birth3" class="m_birth3">
                  <option value="" <c:if test="${member.m_birth3==''}">${'selected'}</c:if>>선택</option>
                  <option value="1" <c:if test="${member.m_birth3=='1'}">${'selected'}</c:if>>1</option>
                  <option value="2" <c:if test="${member.m_birth3=='2'}">${'selected'}</c:if>>2</option>
                  <option value="3" <c:if test="${member.m_birth3=='3'}">${'selected'}</c:if>>3</option>
                  <option value="4" <c:if test="${member.m_birth3=='4'}">${'selected'}</c:if>>4</option>
                  <option value="5" <c:if test="${member.m_birth3=='5'}">${'selected'}</c:if>>5</option>  
                  <option value="6" <c:if test="${member.m_birth3=='6'}">${'selected'}</c:if>>6</option>  
                  <option value="7" <c:if test="${member.m_birth3=='7'}">${'selected'}</c:if>>7</option>  
                  <option value="8" <c:if test="${member.m_birth3=='8'}">${'selected'}</c:if>>8</option>  
                  <option value="9" <c:if test="${member.m_birth3=='9'}">${'selected'}</c:if>>9</option>  
                  <option value="10" <c:if test="${member.m_birth3=='10'}">${'selected'}</c:if>>10</option>  
                  <option value="11" <c:if test="${member.m_birth3=='11'}">${'selected'}</c:if>>11</option>  
                  <option value="12" <c:if test="${member.m_birth3=='12'}">${'selected'}</c:if>>12</option>  
                  <option value="13" <c:if test="${member.m_birth3=='13'}">${'selected'}</c:if>>13</option>  
                  <option value="14" <c:if test="${member.m_birth3=='14'}">${'selected'}</c:if>>14</option>  
                  <option value="15" <c:if test="${member.m_birth3=='15'}">${'selected'}</c:if>>15</option>  
                  <option value="16" <c:if test="${member.m_birth3=='16'}">${'selected'}</c:if>>16</option>  
                  <option value="17" <c:if test="${member.m_birth3=='17'}">${'selected'}</c:if>>17</option>  
                  <option value="18" <c:if test="${member.m_birth3=='18'}">${'selected'}</c:if>>18</option>  
                  <option value="19" <c:if test="${member.m_birth3=='19'}">${'selected'}</c:if>>19</option>  
                  <option value="20" <c:if test="${member.m_birth3=='20'}">${'selected'}</c:if>>20</option>  
                  <option value="21" <c:if test="${member.m_birth3=='21'}">${'selected'}</c:if>>21</option>  
                  <option value="22" <c:if test="${member.m_birth3=='22'}">${'selected'}</c:if>>22</option>  
                  <option value="23" <c:if test="${member.m_birth3=='23'}">${'selected'}</c:if>>23</option>  
                  <option value="24" <c:if test="${member.m_birth3=='24'}">${'selected'}</c:if>>24</option>  
                  <option value="25" <c:if test="${member.m_birth3=='25'}">${'selected'}</c:if>>25</option>  
                  <option value="26" <c:if test="${member.m_birth3=='26'}">${'selected'}</c:if>>26</option>  
                  <option value="27" <c:if test="${member.m_birth3=='27'}">${'selected'}</c:if>>27</option>  
                  <option value="28" <c:if test="${member.m_birth3=='28'}">${'selected'}</c:if>>28</option>  
                  <option value="29" <c:if test="${member.m_birth3=='29'}">${'selected'}</c:if>>29</option>  
                  <option value="30" <c:if test="${member.m_birth3=='30'}">${'selected'}</c:if>>30</option>  
                  <option value="31" <c:if test="${member.m_birth3=='31'}">${'selected'}</c:if>>31</option>  </select>
               <small>일</small>
               </div>
               
               <select name="m_phone1" class="m_phone1">
               	  <option value="">번호선택</option>
                  <option value="010" <c:if test="${member.m_phone1 == '010'}">${'selected'}</c:if>>010</option>
                  <option value="011" <c:if test="${member.m_phone1 == '011'}">${'selected'}</c:if>>011</option>
                  <option value="017" <c:if test="${member.m_phone1 == '017'}">${'selected'}</c:if>>017</option>
               </select>&nbsp; -
               <input type="text" name="m_phone2" size="4" maxlength="4"
                     class="m_phone2" value="${member.m_phone2 }">
                   &nbsp; -
               <input type="text" name="m_phone3" size="4" maxlength="4"
                     class="m_phone3" value="${member.m_phone3 }"><br>
               
               <input type="text" name="m_mail" size="50" class="m_mail"
               			placeholder="메일" value="${member.m_mail }">
               
               <input type="text" id="m_post" name="m_post" size="50" 
                     class="m_post" placeholder="우편" value="${member.m_post }">   
                     
               <input type="text" id="m_adds" name="m_adds" size="50" 
                     class="m_adds" placeholder="주소" value="${member.m_adds }">             
               <input type="button" value="우편번호검색" 
                     onClick="openDaumPostcode()">
                     
               <input type="password" maxlength="20" placeholder="비밀번호 확인"
                     id="m_pw" name="m_pw" class="pwdconfirm">      
                     
                     
               <div class="log_no_btn">
                  <input type="submit" class="log_btn" value="회원 수정하기">      
               </div>   
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