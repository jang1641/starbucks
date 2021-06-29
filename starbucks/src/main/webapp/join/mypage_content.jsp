<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title> 
</head>
<body> 
<article>
	<div>
		<h2>My Starbucks</h2>
	</div>
	
		<input type="button" value="정보 수정하기" class="for1"
				onclick="location.href='<%=request.getContextPath() %>/JoinUpdateMember.do' ">				
		<input type="button" value="회원 탈퇴" class="for2"
				onclick="location.href='<%=request.getContextPath() %>/JoinDeleteMember.do' ">
	<div>
	
	
		<fieldset>
			<p>${sessionScope.id }님 안녕하세요.</p>
			 
		<div> 
			<ul>
				<li><img src="<%=request.getContextPath() %>/img/newpro/new_pd.jpg"></li>
				<li><img src="<%=request.getContextPath() %>/img/newpro/new_pd2.jpg"></li>
				<li><img src="<%=request.getContextPath() %>/img/newpro/new_pd3.jpg"></li> 
				<li><img src="<%=request.getContextPath() %>/img/newpro/new_pd4.jpg"></li>
				<li><img src="<%=request.getContextPath() %>/img/newpro/new_pd5.jpg"></li>
				<li><img src="<%=request.getContextPath() %>/img/newpro/new_pd6.jpg"></li>	 	
			</ul>
		
		
		</div>	
				
		</fieldset>
	</div>
	
</article>	
</body>
</html>