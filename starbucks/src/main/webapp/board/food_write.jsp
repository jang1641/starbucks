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

<style>


article{
padding-top: 50px;
padding-bottom: 50px;
}

</style>


</head>
<body>
<%@ include file="header.jsp" %>


<article>
<c:if test="${sessionScope.id != null }"> 

<form action="<%=request.getContextPath() %>/FoodAction.do" method="post" >
<table cellpadding="0" cellspacing="0" align=center border=1>
	<tr align="center" valign="middle">
		<td colspan="5">등록 게시판</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">분류</div>
		</td>
		<td>
			<input name="f_category" id="f_category" type="text" size="10" maxlength="10" 
				value=""/>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">상품명</div>
		</td>
		<td>
			<input name="f_name" id="f_name" type="text" size="10" maxlength="10" 
				value=""/>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">영문명</div>
		</td>
		<td>
			<input name="f_ename" id="f_ename" type="text" size="50" maxlength="100" 
				value=""/>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">가제</div>
		</td>
		<td>
			<input name="f_subtitle" id="f_subtitle" type="text" size="50" maxlength="100" 
				value=""/>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">가격</div>
		</td>
		<td>
			<input name="f_price" id="f_price" type="text" size="50" maxlength="100" 
				value=""/>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12">
			<div align="center">이미지</div>
		</td>
		<td>
			<input name="f_img" id="f_img" type="text"/>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12">
			<div align="center">상세설명</div>
		</td>
		<td>
			<input name="f_desc" id="f_desc" cols="10" rows="2" type="text">
		</td>
	</tr>
	
	<tr>
		<td style="font-family:돋음; font-size:12">
			<div align="center">칼로리</div>
		</td>
		<td>
			<input name="f_calorie" id="f_calorie" cols="10" rows="2" type="text">
		</td>
	</tr>
	
	<tr>
		<td style="font-family:돋음; font-size:12">
			<div align="center">설탕</div>
		</td>
		<td>
			<input name="f_sugar" id="f_sugar" cols="10" rows="2"  type="text">
		</td>
	</tr>
	
	<tr>
		<td style="font-family:돋음; font-size:12">
			<div align="center">단백질</div>
		</td>
		<td>
			<input name="f_protein" id="f_protein" cols="10" rows="2"  type="text">
		</td>
	</tr>
	
	<tr>
		<td style="font-family:돋음; font-size:12">
			<div align="center">나트륨</div>
		</td>
		<td>
			<input name="f_natrium" id="f_natrium" cols="10" rows="2" type="text">
		</td>
	</tr>
	
	<tr>
		<td style="font-family:돋음; font-size:12">
			<div align="center">지방</div>
		</td>
		<td>
		<input name="f_fat" id="f_fat" cols="10" rows="2" type="text">
		</td>
	</tr>
	
	<tr>
		<td style="font-family:돋음; font-size:12">
			<div align="center">카페인</div>
		</td>
		<td>
			<input type="text" name="f_caffeine" id="f_caffeine" cols="10" rows="2">
		</td>
	</tr>
	
	
	
	<tr bgcolor="cccccc">
		<td colspan="2" style="height:1px;">
		</td>
	</tr>
	<tr><td colspan="2">&nbsp;</td></tr>
	<tr align="center" valign="middle">
		<td colspan="5">			
			<input type=submit value="등록">
			<input type=reset value="취소">
		</td>
	</tr>
</table>
</form>
</c:if>

<c:if test="${sessionScope.id == null }">
	<script>
			alert("로그인한 회원만 가능합니다")
			history.go(-1);
		</script> 
</c:if>
 
</article>

<%@ include file="footer.jsp" %>

</body>
</html>