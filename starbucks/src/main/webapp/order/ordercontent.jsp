<%@page import="model.OrderBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" href="../css/order.css">
<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/header.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/footer.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/order.css"> 


</head> 
<body>
<%@ include file="header.jsp" %>


	 <c:if test="${sessionScope.id != null}"> 
		<form name="order"  method="POST" action="<%=request.getContextPath()%>/Gopay.do?product_number=${food.product_number }">  
			<div class="form_inner">
				<div class="order_left">
				
					<img class="order_img" src="${food.f_img }" height=300px; width=300px;>
				</div>
				<div class="order_right">
					<table class="type05">
						<caption>결제</caption>
						<tr>
							<th scope="row">ID</th>
							<td>${sessionScope.id}</td>
						</tr>
						<tr>
							<th scope="row">상품번호</th>
							<td>${food.product_number}</td>
						</tr>
						<tr>
							<th scope="row">상품이름</th>
							<td>${food.f_name}</td>
						</tr>
						<tr>
							<th scope="row">수량</th>
							<td><select name="quantity">
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
							</select></td>
						</tr>
						<tr>
							<th scope="row">가격</th>
							<td>${food.f_price}</td> 
						</tr>
					</table>
				</div>
			</div>
			<input class="button" type="submit" value="결제">
		</form>
	  </c:if> 
	 <c:if test="${sessionScope.id == null}">
		 <script>
			alert("로그인한 회원만 가능합니다")
			history.go(-1);
		</script> 
	 </c:if>  
	 
	 <%@ include file="footer.jsp" %>
</body>
</html>