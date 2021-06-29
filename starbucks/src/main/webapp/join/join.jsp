<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>  
<head>
<meta charset="UTF-8">  
<title>스타벅스</title> 

<link rel="stylesheet" href="<%=request.getContextPath() %>/css/header.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/footer.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/join.css">
<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

<script src="http://code.jquery.com/jquery-latest.js"></script>

<script src="<%=request.getContextPath() %>/join/join.js"></script>       

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
	</div>
</header>



<article>

   <div>
      <h2>회원가입</h2>
   </div> 
 
   <div class="join_wrap">
      <form method="post" action="<%=request.getContextPath() %>/JoinInsert.do">
         <fieldset>
            
            <div class="input_box">
               <input type="text" maxlength="20" placeholder="아이디"
                     id="id" name="id" class="logid">
                    
               	   <input type="button" value="ID중복검사" id="idcheck" id="idcheck" class="id_check">
               	   		
			   	   <div id="myid"></div>        
                         
                     
               <input type="password" maxlength="20" placeholder="비밀번호"
                     id="m_pw" name="m_pw" class="logpwd">   
               <input type="password" maxlength="20" placeholder="비밀번호 확인"
                     id="m_pwdconfirm" name="m_pwdconfirm" class="pwdconfirm">      
               <input type="text"  maxlength="20" placeholder="닉네임"
                     id="m_nick" name="m_nick" class="m_nick">
               <input type="text"  maxlength="20" placeholder="이름"
                     id="m_name" name="m_name" class="m_name">
                
               <div class="brth">
                     
               <select name="m_birth1" class="m_birth1">
                  <option value="2021">2021</option>       
               </select>
               <small>년</small>     
               </div>
               <div class="brth">          
               <select name="m_birth2" id="m_birth2" class="m_birth2">
                  <option value="">선택</option>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                  <option value="9">9</option>
                  <option value="10">10</option>
                  <option value="11">11</option>
                  <option value="12">12</option>
               </select>               
               <small>월</small>   
               </div>
               <div class="brth"> 
               <select name="m_birth3" id="m_birth3" class="m_birth3">
                  <option value="">선택</option>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>  
                  <option value="6">6</option>  
                  <option value="7">7</option>  
                  <option value="8">8</option>  
                  <option value="9">9</option>  
                  <option value="10">10</option>  
                  <option value="11">11</option>  
                  <option value="12">12</option>  
                  <option value="13">13</option>  
                  <option value="14">14</option>  
                  <option value="15">15</option>  
                  <option value="16">16</option>  
                  <option value="17">17</option>  
                  <option value="18">18</option>  
                  <option value="19">19</option>  
                  <option value="20">20</option>  
                  <option value="21">21</option>  
                  <option value="22">22</option>  
                  <option value="23">23</option>  
                  <option value="24">24</option>  
                  <option value="25">25</option>  
                  <option value="26">26</option>  
                  <option value="27">27</option>  
                  <option value="28">28</option>  
                  <option value="29">29</option>  
                  <option value="30">30</option>  
                  <option value="31">31</option>  
               </select>
               <small>일</small>
               </div> 
               <div class="brth">
               		<span>&nbsp;&nbsp;&nbsp;예)생년원일</span>
               </div>
                    
               
               
               <select name="m_phone1" id="m_phone1" class="m_phone1"> 
                  <option value="">선택</option>
                  <option value="010">010</option>
                  <option value="010">010</option>
                  <option value="011">011</option>
                  <option value="017">017</option>
               </select>&nbsp; -
               <input type="text" id="m_phone2" name="m_phone2" size="4" maxlength="4"
                     class="m_phone2">
                    &nbsp;-
               <input type="text" id="m_phone3" name="m_phone3" size="4" maxlength="4"
                     class="m_phone3"> 
               <span>&nbsp;&nbsp;&nbsp; 예)휴대폰 번호</span>      
                      
               
               <input type="text" id="m_mail" name="m_mail" size="50" class="m_mail"
               			placeholder="이메일 ex)ooo@naver.com">
               
               <input type="text" id="m_post" name="m_post" size="50" 
                     class="m_post" readonly="readonly" placeholder="우편번호">   
                     
               <input type="text" id="m_adds" name="m_adds" size="50" 
                     class="m_adds" readonly="readonly" placeholder="주소">  
                      
               <input type="button" value="우편번호검색" class="pos_bt" 
                     onClick="openDaumPostcode()">
                     
                      
               <div class="log_no_btn">
                  <input type="submit" class="log_btn" value="가입하기">      
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